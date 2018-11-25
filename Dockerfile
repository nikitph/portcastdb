FROM postgres:10
ENV POSTGRES_USER cycloneuser
ENV POSTGRES_PASSWORD abc
ENV POSTGRES_DB cyclonedata
ADD CreateDB.sql /docker-entrypoint-initdb.d/
RUN echo "host    all    all    0.0.0.0/0    md5" >> /var/lib/postgresql/data/pg_hba.conf

