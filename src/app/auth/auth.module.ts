import {APP_INITIALIZER, NgModule} from '@angular/core';
import {BrowserModule} from '@angular/platform-browser';
import {KeycloakAngularModule, KeycloakService} from 'keycloak-angular';
import {KeycloakInitializer} from "./keycloak-initializer";

@NgModule({
  declarations: [],
  imports: [BrowserModule, KeycloakAngularModule],
  providers: [
    {
      provide: APP_INITIALIZER,
      useFactory: KeycloakInitializer,
      multi: true,
      deps: [KeycloakService]
    },
  ],
})
export class AuthModule {
}
