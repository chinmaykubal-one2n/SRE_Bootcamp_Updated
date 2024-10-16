## Milestone:-  3 - Setup one-click local development setup


## Prerequisites


Make sure you have the following installed on your system:

- [Docker](https://www.docker.com/products/docker-desktop)
- [Make](https://www.gnu.org/software/make/#download)


### Follow these steps to set up the Student API:


###  Build the Docker Image
```bash
make docker-build
```

###  Run the PostgreSQL Container
```bash
make docker-compose-up-postgres-container
```


###  Run the Application Container
```bash
make docker-compose-up-students-api
```