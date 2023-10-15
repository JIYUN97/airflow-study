#docker network create airflow
docker volume create airflow_logs
docker volume create airflow_dags
docker volume create airflow_plugins

docker compose --file ext_comp.yaml up -d
docker compose --file server.yaml up -d
docker compose --file web_server.yaml up -d
docker compose --file worker.yaml up -d
