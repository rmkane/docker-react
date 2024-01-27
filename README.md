# React frontend

Navigate to: <http://localhost:8080/>

```sh
docker build -f Dockerfile.dev --progress=plain .

# Isolated source code
docker run -p 8080:5173 $id

# Mount volumes
docker run -p 8080:5173 -v /app/node_modules -v $(pwd):/app $id

# Execute tests inside container
docker exec -it $id npm run test

# Docker compose
docker-compose up --build
docker ps

# nginx
docker build .
docker run -p 8080:80 $id
```
