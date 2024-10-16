.PHONY: docker-build docker-run docker-postgres docker-compose-up-postgres-container docker-compose-down-postgres-container docker-compose-up-students-api docker-compose-down-students-api


# Build the Docker image
docker-build:
	docker build --no-cache --platform linux/amd64 -t student-api:1.0.0 .

# Run the PostgreSQL container
docker-postgres:
	docker run --name postgres-container --env-file .env -p 5431:5432 -v postgres-data:/var/lib/postgresql/data -d postgres:16

# Run the Docker container for the application
docker-run:  
	docker run -d --env-file .env --link postgres-container:postgres-container -p 3000:3000 student-api:1.0.0

# Start the postgres-container service
docker-compose-up-postgres-container:
	docker compose up postgres-container -d

# Start the students-api service
docker-compose-up-students-api:
	docker compose up -d students-api

# Stop the students-api service
docker-compose-down-students-api:
	docker compose down students-api
  
# Stop the postgres-container service
docker-compose-down-postgres-container:
	docker compose down postgres-container
