import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {TestListuserComponent} from "./components/testlistuser/testlistuser.component";

const routes: Routes = [{path: '', component: TestListuserComponent}];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class UsersRoutingModule {
}
