
# SRE Bootcamp

This is a simple Node.js based Student API.

## Milestone:-  1 - Create a simple REST API Webserver


## Prerequisites


Make sure you have the following installed on your system:

- Node.js
- PostgreSQL
- Make
- Postman

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
