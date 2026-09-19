# GitHub Copilot Prompt For Dockerfile

I want to create a multi-stage Dockerfile in the root folder of this project.

The project has:

* Vite + TypeScript + React frontend
* TypeScript + Express backend

Requirements:

* Create the first stage for the frontend.
* Create the second stage for the backend.
* Create a final production stage.
* Keep the final Docker image as small as possible.
* Keep the Dockerfile simple, clean, and easy to understand.
* Follow Docker best practices.
* Do not add anything unnecessary.
* Do not make changes to any existing project files.
* I added backend/ manually  into frontend /app/backend/
# GitHub Copilot Prompt — Docker Compose

I want to create a `docker-compose.yml` file for this project.

## Requirements

### Mongo Service

* Create a service named `mongo`.
* Use MongoDB.
* Initialize the database with the name `mydb`.
* Use the default MongoDB port.
* Use the network `app-network`.
* Use `/home/oo7/newapp` as the volume path.
* Add a healthcheck.

### App Service

* Create a service named `app`.
* Build using:

  * Context: `.`
* Use container name `app`.
* Use the `app-network` network.
* Load environment variables from `.env`.
* Expose port `7000:7000`.
* Add a healthcheck.
* Make the app depend on MongoDB being healthy.

## General Requirements

* Keep the Docker Compose file simple, clean, and easy to understand.
* Follow Docker best practices.
* Do not add unnecessary configuration.
* Do not change any existing project files.

## Manual Changes

After generating the Docker Compose file with GitHub Copilot, I manually made two changes to the `docker-compose.yml` file.

