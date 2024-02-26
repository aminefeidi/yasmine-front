import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

const hostname = 'http://localhost:9010/estimates';

@Injectable({
    providedIn: 'root'
})
export class DashboardsService {

    constructor(private http: HttpClient) { }

    getEstimationStatsByUserStory(): Observable<any> {
        return this.http.get<any>(`${hostname}/estimation/stats/byUserStory`);
    }

    getEstimationStatsByProject(): Observable<any> {
        return this.http.get<any>(`${hostname}/estimation/stats/byProject`);
    }

    getEstimationStatsBySession(): Observable<any> {
        return this.http.get<any>(`${hostname}/estimation/stats/bySession`);
    }
}