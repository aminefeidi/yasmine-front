import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { MenuItem } from 'src/app/layouts/sidebar/menu.model';
import { environment } from 'src/environments/environment';

const hostname = 'http://localhost:9010';

@Injectable({
    providedIn: 'root'
})
export class MenuManagerService {

    constructor(
        private http: HttpClient
    ) { }

    getMenuItems(): Observable<MenuItem[]> {
        return this.http.get<MenuItem[]>(`${hostname}/estimates/menu`);
    }

    updateMenuItem(menu: MenuItem): Observable<MenuItem> {
        return this.http.put<MenuItem>(`${hostname}/estimates/menu/${menu.id}`, menu);
    }
}