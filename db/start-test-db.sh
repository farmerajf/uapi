echo 🧹-cleaning up any old container
docker stop uapi-pg
docker rm uapi-pg

echo 🏗-building new container
docker build -t uapi-pg ../db/.
docker run --name uapi-pg -p 5432:5432 -e POSTGRES_PASSWORD=postgres -d uapi-pg

echo ✅-local db should be listening on localhost:5432
 
