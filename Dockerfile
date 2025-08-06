FROM quay.io/keycloak/keycloak:24.0.2

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Use shell form so ${PORT} expands at runtime
ENTRYPOINT /opt/keycloak/bin/kc.sh start --optimized --http-port=${PORT} --hostname-strict=false --hostname=0.0.0.0 --proxy=edge
