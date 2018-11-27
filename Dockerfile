FROM postgres:10
ENV POSTGRES_PASSWORD abc
ENV POSTGRES_DB cyclonedata
ADD CreateDB.sql /docker-entrypoint-initdb.d/
