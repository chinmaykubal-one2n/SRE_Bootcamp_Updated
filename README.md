
# SRE Bootcamp

This repo will contain all the SRE bootcamp milestones

## Milestone:-  1 - Create a simple REST API Webserver


## Prerequisites


Make sure you have the following installed on your system:

- [Node.js](https://nodejs.org/en/download/package-manager)
- [PostgreSQL](https://www.postgresql.org/download/)
- [Make](https://www.gnu.org/software/make/#download)
- [Postman](https://www.postman.com/downloads/)

### Follow these steps to set up the Student API:

```bash
# Install Dependencies
make install

# Setup PostgreSQL
sudo -i -u postgres

psql

CREATE DATABASE postgres;
CREATE USER postgres WITH PASSWORD 'postgres';
GRANT ALL PRIVILEGES ON DATABASE postgres TO postgres;

\q

exit
```

### Run Migrations
```bash
npm run migrate
```

### Run Tests
```bash
npm run test
```

###  Start the API
```bash
make start
```
###  Start the Postman
Start postman and import the student-api.postman_collection.json and start reaching the respective endpoints

## Milestone:-  2 - Containerise REST API


## Prerequisites


Make sure you have the following installed on your system:

- [Docker](https://docs.docker.com/desktop/install/linux/)
- [Make](https://www.gnu.org/software/make/#download)


### Follow these steps to set up the Student API:


###  Build the Docker Image
```bash
make docker-build
```

###  Run the PostgreSQL Container
```bash
make docker-postgres
```

###  Run the Application Container
```bash
make docker-run