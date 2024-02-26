import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";
import { MenuManagerComponent } from "./menu-manager.component";
import { RouterModule, Routes } from "@angular/router";
import { FormsModule, ReactiveFormsModule } from "@angular/forms";
import { CKEditorModule } from "@ckeditor/ckeditor5-angular";
import { NgApexchartsModule } from "ng-apexcharts";
import { BsDatepickerModule } from "ngx-bootstrap/datepicker";
import { BsDropdownModule } from "ngx-bootstrap/dropdown";
import { ModalModule } from "ngx-bootstrap/modal";
import { DndModule } from "ngx-drag-drop";
import { UIModule } from "src/app/shared/ui/ui.module";
import { TasksRoutingModule } from "../../tasks/tasks-routing.module";

const routes: Routes = [
  {
    path: "",
    component: MenuManagerComponent,
  },
];

@NgModule({
  declarations: [MenuManagerComponent],
  imports: [
    CommonModule,
    RouterModule.forChild(routes),
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    TasksRoutingModule,
    UIModule,
    NgApexchartsModule,
    BsDatepickerModule.forRoot(),
    ModalModule.forRoot(),
    CKEditorModule,
    DndModule,
    BsDropdownModule.forRoot(),
  ],
  exports: [],
  providers: [],
})
export class MenuManagerModule {}
