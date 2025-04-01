# 🚀 Ruby Gem Scaffold with Docker and PostgreSQL

## Overview
This repository provides a Docker-based scaffold for developing Ruby gems with PostgreSQL integration. Using Docker ensures a clean, isolated, and reproducible development environment.

## Features
- Dockerized Ruby environment for gem development.
- PostgreSQL integration.
- Automated gem scaffold generation with `bundler`.
- Pre-configured best practices for gem development.

## Prerequisites
Ensure you have the following installed:
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Setup
Clone the repository and navigate into the directory:
```sh
git clone https://github.com/your-username/create_gem.git
cd create_gem
```

Build and start the Docker containers:
```sh
docker-compose up -d
```

## Usage
To generate a new Ruby gem scaffold, run:
```sh
docker-compose run --rm rails bash
bundler gem my_gem --test=rspec
```
This creates a new gem structure inside the container with RSpec for testing.

## File Structure
```
create_gem/
  ├── Dockerfile
  ├── docker-compose.yml
  ├── local_development/
  ├── .root/
  ├── my_gem/ (generated gem)
```

## Configuration
- The `Dockerfile` sets up the Ruby environment with dependencies.
- The `docker-compose.yml` defines the services for PostgreSQL and the Ruby environment.
- The PostgreSQL database is configured with default credentials (`psql/psql`).

## Stopping the Environment
To stop the running containers:
```sh
docker-compose down
```

## Contributing
Pull requests are welcome! Feel free to submit issues or feature requests.

## License
This project is licensed under the GNU GENERAL PUBLIC LICENSE.


---

👨‍💻 **About the Author**  
Hi! I'm **Germán**, a passionate **Ruby on Rails developer** with experience in **AI-powered applications, StimulusJS, and open-source development**.  

📢 **Let's connect!**  
🔗 [Website](https://www.rubystacknews.com/)  
🐙 [GitHub](https://github.com/ggerman)  
💼 [LinkedIn](https://www.linkedin.com/in/germ%C3%A1n-silva-56a12622/)  
