# React frontend

A React web application that is deployed via Docker.

## Build

Building the project with Docker

### Development

```sh
docker-compose up --build
```

### Production

```sh
dicker build .
```

Navigate to: <http://localhost:8080/>

## Continuous integration

Travis CI is obsolete, use GitHub Actions

See: <https://www.udemy.com/course/docker-and-kubernetes-the-complete-guide/learn/lecture/11437142#questions/17673926>

### GitHub Actions secrets

https://github.com/rmkane/docker-react/settings/secrets/actions

### AWS secrets

1. Top-right of AWS (username)
2. Security credentials: <https://console.aws.amazon.com/iam/home?#security_credential>
3. Add or update "Access keys"

## Helpful commands

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
