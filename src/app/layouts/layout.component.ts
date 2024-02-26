import {AfterViewInit, Component, OnInit} from '@angular/core';

import {EventService} from '../core/services/event.service';

import {LAYOUT_MODE, LAYOUT_VERTICAL, SIDEBAR_TYPE, TOPBAR} from './layouts.model';

@Component({
  selector: 'app-layout',
  templateUrl: './layout.component.html',
  styleUrls: ['./layout.component.scss']
})

export class LayoutComponent implements OnInit, AfterViewInit {

  // layout related config
  layoutType: string;
  topbar: string;
  mode: string;
  sidebartype: string;

  constructor(private eventService: EventService) {
  }

  ngOnInit() {
    // default settings
    this.layoutType = LAYOUT_VERTICAL;
    this.topbar = TOPBAR;
    this.mode = LAYOUT_MODE;
    this.sidebartype = SIDEBAR_TYPE;

    // document.body.setAttribute('data-bs-theme', this.mode);

    // listen to event and change the layout, theme, etc
    this.eventService.subscribe('changeLayout', (layout) => {
      this.layoutType = layout;
    });

    this.LayoutWidth();


    // listen to event and change the layout, theme, etc
    this.eventService.subscribe('changeSidebartype', (layout) => {
      this.sidebartype = layout;
      this.changeSidebar(this.sidebartype);
    });

    // Change Mode
    this.eventService.subscribe('changeMode', (mode) => {
      this.mode = mode;
      this.changeMode(this.mode);
    });

    this.changeSidebar(this.sidebartype);
    this.changeMode(this.mode);
  }

  // Theme Drk Light Mode
  changeMode(value) {
    switch (value) {
      case "light":
        document.body.setAttribute('data-bs-theme', 'light');
        break;
      case "dark":
        document.body.setAttribute('data-bs-theme', 'dark');
        break;
      default:
        document.body.setAttribute('data-bs-theme', 'light');
        break;
    }
  }

  changeSidebar(value) {
    switch (value) {
      case "light":
        document.body.setAttribute('data-sidebar', 'light');
        document.body.setAttribute('data-topbar', 'dark');
        document.body.removeAttribute('data-sidebar-size');
        document.body.removeAttribute('data-layout-size');
        document.body.removeAttribute('data-keep-enlarged');
        document.body.classList.remove('vertical-collpsed');
        document.body.removeAttribute('data-layout-scrollable');
        break;
      case "compact":
        document.body.setAttribute('data-sidebar-size', 'small');
        document.body.setAttribute('data-sidebar', 'dark');
        document.body.removeAttribute('data-topbar');
        document.body.removeAttribute('data-layout-size');
        document.body.removeAttribute('data-keep-enlarged');
        document.body.classList.remove('sidebar-enable');
        document.body.classList.remove('vertical-collpsed');
        document.body.removeAttribute('data-layout-scrollable');
        break;
      case "dark":
        document.body.setAttribute('data-sidebar', 'dark');
        document.body.removeAttribute('data-topbar');
        document.body.removeAttribute('data-layout-size');
        document.body.removeAttribute('data-keep-enlarged');
        document.body.removeAttribute('data-sidebar-size');
        document.body.classList.remove('sidebar-enable');
        document.body.classList.remove('vertical-collpsed');
        document.body.removeAttribute('data-layout-scrollable');
        break;
      case "icon":
        document.body.classList.add('vertical-collpsed');
        document.body.setAttribute('data-sidebar', 'dark');
        document.body.removeAttribute('data-layout-size');
        document.body.setAttribute('data-keep-enlarged', "true");
        document.body.removeAttribute('data-topbar');
        document.body.removeAttribute('data-layout-scrollable');
        break;
      case "colored":
        document.body.classList.remove('sidebar-enable');
        document.body.classList.remove('vertical-collpsed');
        document.body.setAttribute('data-sidebar', 'colored');
        document.body.removeAttribute('data-layout-size');
        document.body.removeAttribute('data-keep-enlarged');
        document.body.removeAttribute('data-topbar');
        document.body.removeAttribute('data-layout-scrollable');
        document.body.removeAttribute('data-sidebar-size');
        break;
      default:
        document.body.setAttribute('data-sidebar', 'dark');
        break;
    }
  }

  ngAfterViewInit() {
  }

  LayoutWidth() {
    document.body.setAttribute("data-layout-size", "fluid");
    document.body.classList.remove("vertical-collpsed");
    document.body.removeAttribute("data-layout-scrollable");
  }

}
