# INCEPTION | Docker


This project showcases a setup for a web server using DockerCompose. It includes configurations for services like Nginx, MariaDB, and WordPress, ftp , redis, ... each running in a separate container.

## Docker and Containers

[Docker](https://www.docker.com/) is a platform that enables developers to package applications and their dependencies into standardized units called containers. Containers allow these applications to run consistently across different environments, ensuring that they behave the same way regardless of where they are deployed.

### Key Benefits of Docker and Containers

- **Isolation**: Containers encapsulate an application and its dependencies, providing isolation from the underlying system. This isolation ensures that the application runs reliably across various environments.

- **Portability**: Docker containers can run on any system that supports Docker, making them highly portable. This eliminates the "it works on my machine" problem, as the containerized application behaves consistently across different environments.

- **Efficiency**: Containers share the host system's kernel, making them lightweight and efficient. They require fewer system resources compared to traditional virtual machines.

- **Scalability**: Docker and containers make it easy to scale applications by creating multiple instances of a containerized service. This allows for horizontal scaling to handle increased load.

- **Orchestration**: Tools like Docker Compose and Kubernetes allow for the management and orchestration of multiple containers, making it easier to deploy and manage complex applications with microservices architecture.

### About Containers in This Project

In this project, we leverage Docker to containerize various services. Each service (e.g., Nginx, MariaDB, WordPress) runs in its own container, ensuring a clean separation of concerns. This approach enables consistent deployment and easy maintenance of the web server setup.

For detailed information on Docker and its capabilities, refer to the [official Docker documentation](https://docs.docker.com/).


---


## Docker Containers

- **Nginx**:
The Nginx container is responsible for handling HTTP requests and acting as a reverse proxy for other services. It is configured to serve static content and forward dynamic requests to the respective services.

- **MariaDB**:
MariaDB is a widely used open-source relational database management system. This container provides the database backend for the WordPress application.

- **WordPress**:
The WordPress container hosts the WordPress CMS, providing a platform for website development and content management.
Additional Services

(Optional) You can include any additional services you have configured, such as caching systems, load balancers, etc.

## Installation

To run this project locally, you'll need to have Docker and Docker Compose installed. Follow the steps below:

1. **Docker Installation**:
   - For Windows or macOS, download [Docker Desktop](https://www.docker.com/products/docker-desktop) and follow the installation instructions.
   - For Linux, you can follow the instructions provided in the [official Docker documentation](https://docs.docker.com/get-docker/).

2. **Docker Compose Installation**:
   - Docker Compose is included with Docker Desktop, so if you've installed Docker Desktop, you should have it already.

3. **Clone the Repository**:
   ```bash
   1- git clone git@github.com:SOverFLow/inception.git

   2- 'make build' for build and run the project

   3- 'make up' for run the project

   4- 'make down' for stop the project containers
