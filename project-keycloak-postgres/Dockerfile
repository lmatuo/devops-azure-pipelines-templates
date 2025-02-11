# Stage 1: Download the root certificate
FROM alpine/curl:8.1.2 as digicert

WORKDIR /app

# Download the DigiCert Global Root CA certificate to ensure secure connections with the database
RUN curl https://dl.cacerts.digicert.com/DigiCertGlobalRootCA.crt.pem -o DigiCertGlobalRootCA.crt.pem

# Stage 2: Use OpenJDK image to import the certificate
FROM openjdk:11-jre-slim as certs

# Copy the downloaded certificate from the previous stage to the OpenJDK image
COPY --from=digicert /app/DigiCertGlobalRootCA.crt.pem /opt/keycloak/.postgresql/root.crt

# Import the certificate into the Java keystore to establish trust with the database
RUN keytool -import -trustcacerts -file /opt/keycloak/.postgresql/root.crt -alias digicert -keystore /usr/local/openjdk-11/lib/security/cacerts -storepass changeit -noprompt

# Stage 3: Use the official Keycloak image
FROM quay.io/keycloak/keycloak:23.0.4

# Arguments for configuring Keycloak
ARG KEYCLOAK_ADMIN 
ARG KEYCLOAK_ADMIN_PASSWORD 
ARG KC_HOSTNAME 
ARG KEYCLOAK_FRONTEND_URL 
ARG KC_HOSTNAME_ADMIN_URL 
ARG KC_DB_USERNAME 
ARG KC_DB_PASSWORD 
ARG KC_DB_URL 

# Set environment variables with the argument values for Keycloak configuration
ENV KEYCLOAK_ADMIN=$KEYCLOAK_ADMIN
ENV KEYCLOAK_ADMIN_PASSWORD=$KEYCLOAK_ADMIN_PASSWORD
ENV KC_HOSTNAME=$KC_HOSTNAME
ENV KEYCLOAK_FRONTEND_URL=$KEYCLOAK_FRONTEND_URL
ENV KC_HOSTNAME_ADMIN_URL=$KC_HOSTNAME_ADMIN_URL
ENV KC_DB_USERNAME=$KC_DB_USERNAME
ENV KC_DB_PASSWORD=$KC_DB_PASSWORD
ENV KC_DB_URL=$KC_DB_URL

# Hostname and proxy configurations for secure and accurate routing
ENV KC_HOSTNAME_STRICT=true
ENV KC_HOSTNAME_STRICT_HTTPS=true
ENV KC_HOSTNAME_STRICT_BACKCHANNEL=true
ENV KC_PROXY=edge
ENV KC_PROXY_HEADERS=forwarded
ENV PROXY_ADDRESS_FORWARDING=true

# Token lifespans configuration to manage session duration
ENV KEYCLOAK_ACCESS_TOKEN_LIFESPAN=3600
ENV KEYCLOAK_ACTION_TOKEN_LIFESPAN=3600
ENV KEYCLOAK_REFRESH_TOKEN_LIFESPAN=3600

# Security configurations: disable HTTP, enable HTTPS, and define the HTTPS port
ENV KC_HTTP_ENABLED=false
ENV KC_HTTPS_PORT=8080

# Caching and logging configurations for better performance and monitoring
ENV KC_CACHE=ispn
ENV KC_LOG_LEVEL=info

# Enable hostname debugging for development environments
ENV KC_HOSTNAME_DEBUG=true

# Database configurations for PostgreSQL setup
ENV KC_DB=postgres
ENV KC_DB_DRIVER=org.postgresql.xa.PGXADataSource
ENV KC_TRANSACTION_XA_ENABLED=true

# Expose the HTTPS port
EXPOSE 8080

# Copy the modified Java keystore from the certs stage to the Keycloak image
COPY --from=certs /usr/local/openjdk-11/lib/security/cacerts /usr/local/openjdk-11/lib/security/cacerts

# Start Keycloak with the specified production configurations and enable debugging
CMD ["-Dquarkus.transaction-manager.enable-recovery=true", "-Dkeycloak.frontendUrl=${KEYCLOAK_FRONTEND_URL}", "-Dkeycloak.listen-port=8080", "--debug", "start"]