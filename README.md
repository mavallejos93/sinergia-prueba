# sinergia-prueba
prueba tecnica sinergia

PARTE 1



PARTE 2

Dockerfile ejecutar solo

docker build -t sinergia-test:latest .

visitar http://localhost:8080/

Dockercompose

docker-compose up -d --> para deploy de los containers

docker-compose ps --> para verificar si estan en estado run

visitar http://localhost:8080/

para la db

host: http://localhost:5432
user: postgres
password: postgres
db: sinergia_db

