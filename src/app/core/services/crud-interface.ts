import {Observable} from "rxjs";

/**
 * @author Skander Ben Fredj
 */
export interface CrudInterface<T, ID> {
  save(t: T): Observable<T>;

  update(id: ID, t: T): Observable<T>;

  findById(id: ID): Observable<T>;

  findAll(): Observable<T[]>;

  delete(id: ID): Observable<any>;
}
