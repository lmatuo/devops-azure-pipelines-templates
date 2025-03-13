# Use Eclipse Temurin JRE 17 as the base image
FROM eclipse-temurin:17-jre-jammy

# Add metadata about the image
LABEL org.opencontainers.image.url=https://github.com/SonarSource/docker-sonarqube

# Set locale environment variables
ENV LANG='en_US.UTF-8' \
    LANGUAGE='en_US:en' \
    LC_ALL='en_US.UTF-8'

# Define SonarQube version and database connection arguments
ARG SONARQUBE_VERSION=9.9.8.100196
ARG SONARQUBE_ZIP_URL=https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-${SONARQUBE_VERSION}.zip
ARG DATABASE_HOST
ARG DATABASE_NAME
ARG DATABASE_USER
ARG DATABASE_PASSWORD

# Set environment variables for Java and SonarQube paths
ENV JAVA_HOME='/opt/java/openjdk' \
    SONARQUBE_HOME='/opt/sonarqube' \
    SONAR_VERSION="${SONARQUBE_VERSION}" \
    SQ_DATA_DIR="/opt/sonarqube/data" \
    SQ_EXTENSIONS_DIR="/opt/sonarqube/extensions" \
    SQ_LOGS_DIR="/opt/sonarqube/logs" \
    SQ_TEMP_DIR="/opt/sonarqube/temp" \
    DATABASE_HOST=${DATABASE_HOST} \
    DATABASE_NAME=${DATABASE_NAME} \
    DATABASE_USER=${DATABASE_USER} \
    DATABASE_PASSWORD=${DATABASE_PASSWORD} \
    SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true
    # SONAR_JDBC_USERNAME="${DATABASE_USER}" \
    # SONAR_JDBC_PASSWORD="${DATABASE_PASSWORD}" \
    # SONAR_JDBC_URL="${DATABASE_JDBC_URL}" \
    # SYSCTL_VM_MAX_MAP_COUNT=262144


# Install necessary dependencies and configure SonarQube
RUN set -eux; \
    groupadd --system --gid 1000 sonarqube; \
    useradd --system --uid 1000 --gid sonarqube sonarqube; \
    apt-get update; \
    apt-get --no-install-recommends -y install \
        bash \
        curl \
        fonts-dejavu \
        gnupg \
        unzip; \
    echo "networkaddress.cache.ttl=5" >> "${JAVA_HOME}/conf/security/java.security"; \
    sed --in-place --expression="s?securerandom.source=file:/dev/random?securerandom.source=file:/dev/urandom?g" "${JAVA_HOME}/conf/security/java.security"; \
    for server in $(shuf -e hkps://keys.openpgp.org \
                            hkps://keyserver.ubuntu.com); do \
        gpg --batch --keyserver "${server}" --recv-keys 679F1EE92B19609DE816FDE81DB198F93525EC1A && break || : ; \
    done; \
    mkdir --parents /opt; \
    cd /opt; \
    curl --fail --location --output sonarqube.zip --silent --show-error "${SONARQUBE_ZIP_URL}"; \
    curl --fail --location --output sonarqube.zip.asc --silent --show-error "${SONARQUBE_ZIP_URL}.asc"; \
    gpg --batch --verify sonarqube.zip.asc sonarqube.zip; \
    unzip -q sonarqube.zip; \
    mv "sonarqube-${SONARQUBE_VERSION}" sonarqube; \
    rm sonarqube.zip*; \
    rm -rf ${SONARQUBE_HOME}/bin/*; \
    ln -s "${SONARQUBE_HOME}/lib/sonar-application-${SONARQUBE_VERSION}.jar" "${SONARQUBE_HOME}/lib/sonarqube.jar"; \
    chmod -R 555 ${SONARQUBE_HOME}; \
    chmod -R ugo+wrX "${SQ_DATA_DIR}" "${SQ_EXTENSIONS_DIR}" "${SQ_LOGS_DIR}" "${SQ_TEMP_DIR}"; \
    apt-get remove -y gnupg unzip curl; \
    rm -rf /var/lib/apt/lists/*;

# Copy the sonar.properties configuration file to connect SonarQube to the PostgreSQL database
COPY sonar.properties ${SONARQUBE_HOME}/conf/sonar.properties

# Replace placeholders in sonar.properties with actual environment variables
RUN set -eux; \
    sed -i "s#\${DATABASE_HOST}#${DATABASE_HOST}#g" ${SONARQUBE_HOME}/conf/sonar.properties && \
    sed -i "s#\${DATABASE_NAME}#${DATABASE_NAME}#g"  ${SONARQUBE_HOME}/conf/sonar.properties && \
    sed -i "s#\${DATABASE_USER}#${DATABASE_USER}#g"  ${SONARQUBE_HOME}/conf/sonar.properties && \
    sed -i "s#\${DATABASE_PASSWORD}#${DATABASE_PASSWORD}#g"  ${SONARQUBE_HOME}/conf/sonar.properties

# Print the final sonar.properties file for debugging purposes
RUN cat ${SONARQUBE_HOME}/conf/sonar.properties

# Install curl to download the PostgreSQL JDBC driver, then remove it to reduce image size
RUN apt-get update && apt-get install -y curl && \
    curl -L -o /opt/sonarqube/lib/postgresql.jar https://jdbc.postgresql.org/download/postgresql-42.6.0.jar && \
    apt-get remove -y curl && rm -rf /var/lib/apt/lists/*

# Run the entrypoint as the root user
USER root

# Copy the custom entrypoint script and set execution permissions
COPY entrypoint.sh ${SONARQUBE_HOME}/docker/
RUN chmod +x ${SONARQUBE_HOME}/docker/entrypoint.sh

# Set the working directory
WORKDIR ${SONARQUBE_HOME}

# Expose SonarQube's default port
EXPOSE 9000

# Run the container as the non-root 'sonarqube' user
USER sonarqube

# Ensure the container stops cleanly when terminated
STOPSIGNAL SIGINT

# Define the entrypoint script for the container
ENTRYPOINT [ "/opt/sonarqube/docker/entrypoint.sh" ]