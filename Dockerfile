FROM quay.io/keycloak/keycloak:24.0.2

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Use start-dev with Render’s PORT and bind to 0.0.0.0
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", 
            "--http-port=${PORT}", 
            "--hostname-strict=false", 
            "--hostname-strict-https=false", 
            "--http-enabled=true", 
            "--hostname=0.0.0.0"]
