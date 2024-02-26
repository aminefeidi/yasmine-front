import keycloakConfigProd from "./keycloak.config.prod";

const hostname = "http://localhost:9000"

export const environment = {
  production: true,
  defaultauth: 'fackbackend',
  keycloak: keycloakConfigProd,
  hostname: "backend:9090",
  baseUrl: hostname + "/api/v1",

};
