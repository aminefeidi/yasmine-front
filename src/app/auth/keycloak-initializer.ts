import {KeycloakOptions, KeycloakService} from 'keycloak-angular';
import {environment} from '../../environments/environment';

export function KeycloakInitializer(keycloak: KeycloakService): () => Promise<boolean> {

  const options: KeycloakOptions = {
    config: environment.keycloak,
    loadUserProfileAtStartUp: true,
    initOptions: {
      onLoad: 'check-sso',
      silentCheckSsoRedirectUri:
        window.location.origin + '/assets/silent-check-sso.html'
    },
    bearerExcludedUrls: ['/assets']
  };


  return () => keycloak.init(options);

}
