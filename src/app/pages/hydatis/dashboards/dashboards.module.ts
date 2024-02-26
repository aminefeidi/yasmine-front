import {NgModule} from '@angular/core';
import {CommonModule} from '@angular/common';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';

import {DashboardsRoutingModule} from './dashboards-routing.module';
import { UiModule } from '../../ui/ui.module';
import { WidgetModule } from 'src/app/shared/widget/widget.module';

import {NgApexchartsModule} from 'ng-apexcharts';
import { SharedModule } from 'src/app/shared/shared.module';

import {TooltipModule} from 'ngx-bootstrap/tooltip';
import {BsDropdownModule, BsDropdownConfig} from 'ngx-bootstrap/dropdown';
import {CarouselModule} from 'ngx-bootstrap/carousel';
import {TabsModule} from 'ngx-bootstrap/tabs';
import {ModalModule} from 'ngx-bootstrap/modal';

import {SimplebarAngularModule} from 'simplebar-angular';

import {DefaultComponent} from './default/default.component';

@NgModule({
  declarations: [DefaultComponent],
  imports: [
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    DashboardsRoutingModule,
    BsDropdownModule.forRoot(),
    TooltipModule.forRoot(),
    TabsModule.forRoot(),
    CarouselModule.forRoot(),
    NgApexchartsModule,
    SimplebarAngularModule,
    ModalModule.forRoot(),
    UiModule,
    WidgetModule,
    SharedModule
  ],
  providers: [BsDropdownConfig],
})
export class DashboardsModule {
}
