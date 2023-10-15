# create external network
docker network create airflow
docker network create ext_comp

# create external volume
docker volume create airflow
docker volume create airflow_logs
docker volume create airflow_dags
docker volume create airflow_plugins

docker volume create airflow-study_postgres-db-volume

# launch the project
docker compose --project-name ext_comp --file ext_comp.yaml up -d
docker compose --project-name server --file server.yaml up -d
docker compose --project-name web_server --file web_server.yaml up -d
docker compose --project-name worker --file worker.yaml up -d

docker compose --project-name worker-ext --file worker2.yaml up -d

