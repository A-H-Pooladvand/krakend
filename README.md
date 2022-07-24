# Krakend Docker

Keakend is a microservice architecture for building RESTful APIs.
To see the full documentation, visit [https://krakend.io](https://krakend.io).

## Getting started
- [Install requirements](#install-requirements)
- [Quick start](#quick-start)

### Install requirements

```shell
git
docker
docker compose
make
```

### Quick Start
- Copy `.env.example` to `.env`
- Check the `.env` file and modify it if necessary
- Put your krakend src folder in the `/src` folder
- To run the docker compose, run the following command:
- 
```shell
docker compose up -d --build
```

- To stop the docker compose, run the following command:
```shell
docker compose down
```

- To see Makefile commands, run the following command:

```shell
make help
```