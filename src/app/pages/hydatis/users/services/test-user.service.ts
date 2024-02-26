import {Injectable} from '@angular/core';
import {AbstractCrudService} from "../../../../core/services/abstract-crud.service";
import {TestModel} from "../models/test.model";
import {HttpClient} from "@angular/common/http";
import {environment} from "../../../../../environments/environment";
import {Observable} from "rxjs";

@Injectable({
  providedIn: 'root'
})
export class TestUserService extends AbstractCrudService<TestModel, number> {


  constructor(http: HttpClient) {
    super(http, `${environment.baseUrl}/test`);
  }

  testMethod(): Observable<TestModel> {
    return this._http.get<TestModel>(this._base, this.httpOptions);
  }

}
