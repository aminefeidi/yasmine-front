import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';

import {CalendarComponent} from './calendar/calendar.component';
import {ChatComponent} from './chat/chat.component';
import {DefaultComponent} from './dashboards/default/default.component';
import {FilemanagerComponent} from './filemanager/filemanager.component';

const routes: Routes = [
  // { path: '', redirectTo: 'dashboard' },
  {
    path: "",
    component: DefaultComponent
  },
  {path: 'dashboard', component: DefaultComponent},
  {path: 'calendar', component: CalendarComponent},
  {path: 'chat', component: ChatComponent},
  {path: 'filemanager', component: FilemanagerComponent},
  {path: 'dashboards', loadChildren: () => import('./dashboards/dashboards.module').then(m => m.DashboardsModule)},
  {path: 'ecommerce', loadChildren: () => import('./ecommerce/ecommerce.module').then(m => m.EcommerceModule)},
  {path: 'email', loadChildren: () => import('./email/email.module').then(m => m.EmailModule)},
  {path: 'invoices', loadChildren: () => import('./invoices/invoices.module').then(m => m.InvoicesModule)},
  {path: 'projects', loadChildren: () => import('./projects/projects.module').then(m => m.ProjectsModule)},
  {path: 'tasks', loadChildren: () => import('./tasks/tasks.module').then(m => m.TasksModule)},
  {path: 'contacts', loadChildren: () => import('./contacts/contacts.module').then(m => m.ContactsModule)},
  {path: 'blog', loadChildren: () => import('./blog/blog.module').then(m => m.BlogModule)},
  {path: 'ui', loadChildren: () => import('./ui/ui.module').then(m => m.UiModule)},
  {path: 'form', loadChildren: () => import('./form/form.module').then(m => m.FormModule)},
  {path: 'tables', loadChildren: () => import('./tables/tables.module').then(m => m.TablesModule)},
  {path: 'icons', loadChildren: () => import('./icons/icons.module').then(m => m.IconsModule)},
  {path: 'charts', loadChildren: () => import('./chart/chart.module').then(m => m.ChartModule)},
  {path: 'jobs', loadChildren: () => import('./jobs/jobs.module').then(m => m.JobsModule)},
  {path: 'hydatis', loadChildren: () => import('./hydatis/hydatis.module').then(m => m.HydatisModule)}
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class PagesRoutingModule {
}
