–- sacamos la tabla foránea
podman exec -it nodo1 psql -U postgres -d homecare -c "DROP FOREIGN TABLE esquema_grupo3.paciente_cipoletti;"

–- eliminamos El user mapping
podman exec -it nodo1 psql -U postgres -d homecare -c "DROP USER MAPPING FOR postgres SERVER servidor_nodo3;"

–- eliminamos el servidor
podman exec -it nodo1 psql -U postgres -d homecare -c "DROP SERVER servidor_nodo3;"

–- eliminamos la extensión postgres_fdw
podman exec -it nodo1 psql -U postgres -d homecare -c "DROP EXTENSION postgres_fdw;"

–- borramos los contenedores
podman rm -f nodo1 nodo2 nodo3

–- borramos los volumenes de datos
podman volume rm nodo1-datos nodo2-datos nodo3-datos

–- borramos la red 
podman network rm lbd-net

