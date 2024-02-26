/* eslint-disable @typescript-eslint/adjacent-overload-signatures */
import {Injectable, PipeTransform} from '@angular/core';
import {BehaviorSubject, Observable, of, Subject} from 'rxjs';

import {jobListModel} from './list.model';
import {JobListdata} from './data';
import {DecimalPipe} from '@angular/common';
import {debounceTime, delay, switchMap, tap} from 'rxjs/operators';
import {SortColumn, SortDirection} from './list-sortable.directive';

interface SearchResult {
  jobList: jobListModel[];
  total: number;
}

interface State {
  page: number;
  pageSize: number;
  searchTerm: string;
  sortColumn: SortColumn;
  sortDirection: SortDirection;
  startIndex: number;
  endIndex: number;
  totalRecords: number;
  status: string;
  type: string;
  date: string;
}

const compare = (v1: string | number, v2: string | number) => v1 < v2 ? -1 : v1 > v2 ? 1 : 0;

function sort(jobList: jobListModel[], column: SortColumn, direction: string): jobListModel[] {
  if (direction === '' || column === '') {
    return jobList;
  } else {
    return [...jobList].sort((a, b) => {
      const res = compare(a[column], b[column]);
      return direction === 'asc' ? res : -res;
    });
  }
}

function matches(country: jobListModel, term: string, pipe: PipeTransform) {
  return country.title.toLowerCase().includes(term.toLowerCase())
    ;
}

@Injectable({providedIn: 'root'})
export class JobListService {
  private _loading$ = new BehaviorSubject<boolean>(true);
  private _search$ = new Subject<void>();
  private jobLlist$ = new BehaviorSubject<jobListModel[]>([]);
  private _total$ = new BehaviorSubject<number>(0);

  content?: any;
  products?: any;

  private _state: State = {
    page: 1,
    pageSize: 10,
    searchTerm: '',
    sortColumn: '',
    sortDirection: '',
    startIndex: 0,
    endIndex: 9,
    totalRecords: 0,
    status: '',
    type: '',
    date: '',
  };

  constructor(private pipe: DecimalPipe) {
    this._search$.pipe(
      tap(() => this._loading$.next(true)),
      debounceTime(200),
      switchMap(() => this._search()),
      delay(200),
      tap(() => this._loading$.next(false))
    ).subscribe(result => {
      this.jobLlist$.next(result.jobList);
      this._total$.next(result.total);
    });

    this._search$.next();
  }

  get jobList$() {
    return this.jobLlist$.asObservable();
  }

  get product() {
    return this.products;
  }

  get total$() {
    return this._total$.asObservable();
  }

  get loading$() {
    return this._loading$.asObservable();
  }

  get page() {
    return this._state.page;
  }

  get pageSize() {
    return this._state.pageSize;
  }

  get searchTerm() {
    return this._state.searchTerm;
  }

  get startIndex() {
    return this._state.startIndex;
  }

  get endIndex() {
    return this._state.endIndex;
  }

  get totalRecords() {
    return this._state.totalRecords;
  }

  get status() {
    return this._state.status;
  }

  get type() {
    return this._state.type;
  }

  get date() {
    return this._state.date;
  }

  set page(page: number) {
    this._set({page});
  }

  set pageSize(pageSize: number) {
    this._set({pageSize});
  }

  set searchTerm(searchTerm: string) {
    this._set({searchTerm});
  }

  set sortColumn(sortColumn: SortColumn) {
    this._set({sortColumn});
  }

  set sortDirection(sortDirection: SortDirection) {
    this._set({sortDirection});
  }

  set startIndex(startIndex: number) {
    this._set({startIndex});
  }

  set endIndex(endIndex: number) {
    this._set({endIndex});
  }

  set totalRecords(totalRecords: number) {
    this._set({totalRecords});
  }

  set status(status: any) {
    this._set({status});
  }

  set type(type: any) {
    this._set({type});
  }

  set date(date: any) {
    this._set({date});
  }

  private _set(patch: Partial<State>) {
    Object.assign(this._state, patch);
    this._search$.next();
  }

  private _search(): Observable<SearchResult> {
    const {sortColumn, sortDirection, pageSize, page, searchTerm, status, type, date} = this._state;

    // 1. sort
    let jobList = sort(JobListdata, sortColumn, sortDirection);

    // 2. filter
    jobList = jobList.filter(country => matches(country, searchTerm, this.pipe));

    // 3. Status Filter
    if (status) {
      jobList = jobList.filter(country => country.status == status);
    } else {
      jobList = jobList;
    }

    // 4. Type Filter
    if (type) {
      jobList = jobList.filter(country => country.type == type);
    } else {
      jobList = jobList;
    }

    const total = jobList.length;

    // 3. paginate
    this.totalRecords = jobList.length;
    this._state.startIndex = (page - 1) * this.pageSize + 1;
    this._state.endIndex = (page - 1) * this.pageSize + this.pageSize;
    if (this.endIndex > this.totalRecords) {
      this.endIndex = this.totalRecords;
    }
    jobList = jobList.slice(this._state.startIndex - 1, this._state.endIndex);
    return of({jobList, total});
  }
}
