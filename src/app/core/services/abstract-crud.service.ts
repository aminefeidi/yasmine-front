import {Observable} from "rxjs";
import {HttpClient, HttpHeaders} from "@angular/common/http";
import {CrudInterface} from "./crud-interface";


/**
 * Abstract Crud class with common methods
 * @author Skander Ben Fredj
 * @interface CrudInterface
 * @template T object
 * @template ID entity id type
 */
export abstract class AbstractCrudService<T, ID> implements CrudInterface<T, ID> {

  httpOptions = {
    headers: new HttpHeaders({'Content-Type': 'application/json'})
  };

  protected constructor(
    protected _http: HttpClient,
    protected _base: string,
  ) {
  }

  save(t: T): Observable<T> {
    return this._http.post<T>(this._base, t, this.httpOptions);
  }

  update(id: ID, t: T): Observable<T> {
    return this._http.put<T>(this._base + "/" + id, t, this.httpOptions);
  }

  findById(id: ID): Observable<T> {
    return this._http.get<T>(this._base + "/" + id, this.httpOptions);
  }

  findAll(): Observable<T[]> {
    return this._http.get<T[]>(this._base, this.httpOptions)
  }

  delete(id: ID): Observable<T> {
    return this._http.delete<T>(this._base + '/' + id, this.httpOptions);
  }

}
