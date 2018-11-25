FROM postgres:10
ENV POSTGRES_PASSWORD abc
ENV POSTGRES_DB cyclonedata
ADD CreateDB.sql /docker-entrypoint-initdb.d/
ADD setupRemoteConnections.sh /docker-entrypoint-initdb.d/setupRemoteConnections.sh
RUN chmod 755 /docker-entrypoint-initdb.d/setupRemoteConnections.sh
RUN echo "listen_addresses='*'" >> /var/lib/postgresql/data/postgresql.conf
