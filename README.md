# React frontend

A React web application that is deployed via Docker.

## Build

These are the instructions for building the project with Docker.

**Note:** Local builds should be accessible via: <http://localhost:8080>

### Development

Use Docker compose for a local HMR server:

```sh
docker-compose -f docker-compose-dev.yml up
docker-compose -f docker-compose-dev.yml up --build
docker-compose -f docker-compose-dev.yml down
```

Use Docker compose for a local prod server:

### Local production

```sh
docker-compose -f docker-compose-local.yml up
docker-compose -f docker-compose-local.yml up --build
docker-compose -f docker-compose-local.yml down
```

## Continuous integration

Travis CI is obsolete, use GitHub Actions

See: <https://www.udemy.com/course/docker-and-kubernetes-the-complete-guide/learn/lecture/11437142#questions/17673926>

### GitHub Actions secrets

Secrets: <https://github.com/rmkane/docker-react/settings/secrets/actions>

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
