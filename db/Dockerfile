FROM postgres
COPY scripts/* /docker-entrypoint-initdb.d
CMD ["docker-entrypoint.sh", "postgres"]
