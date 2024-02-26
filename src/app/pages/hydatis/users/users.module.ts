import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';

import {UsersRoutingModule} from './users-routing.module';
import {TestListuserComponent} from './components/testlistuser/testlistuser.component';


@NgModule({
  declarations: [
    TestListuserComponent
  ],
  imports: [
    CommonModule,
    UsersRoutingModule
  ]
})
export class UsersModule {
}
