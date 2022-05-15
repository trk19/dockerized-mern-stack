# About this Project

- **PROJECT NAME :** dockerized-mern-stack .

- **PROJECT GOAL :** Apply automation practices deploy containerized POC MERN stack Application behind **nginx reverse proxy** using **docker** and **docker-compose .**

- **USED TOOLS :**

  - Containerization Platform : [Docker](https://www.docker.com/)
  - automation tool : [Make](https://www.gnu.org/software/make/)
  - Reverse proxy : [nginx-proxy](https://github.com/nginx-proxy/nginx-proxy)

- **Motivations of this work :** This works is for learning / testing purposes
  mainly , to containerize POC MERN stack appliaction using [Docker](https://www.docker.com/), and also test the capabilities of deploying it behing a [nginx-proxy](https://github.com/nginx-proxy/nginx-proxy) , and all that using [docker-compose](https://docs.docker.com/compose/) .

# How it works

### Prerequisites

1. Linux / Windows host machine ( I have used Linux Mint 20.2)
2. Internet Connection
3. [docker](https://www.docker.com/) installed on Host Machine
4. [docker-compose](https://docs.docker.com/compose/) installed on Host Machine

### How to run it

- ##### Run nginx reverse proxy

  **PS : it's an obligation to respect the order of starting the containers , so that the app work correctly .**

      - using a terminal, go to project directory
      - run the command `make compose_run_proxy`.

- ##### Run the application

  - using a terminal, go to project directory
  - run the command `make compose_run_app`.
  - open the file `/etc/hosts` using **text editor** or **nano** or **vim** (check file permissions , or simply use " **sudo** ")
  - simulate a DNS record by adding the line `127.0.0.1 http://testapp.local.com`

- ##### Test the application

  - go to your browser and tap the URL : `http://testapp.local.com` and start testing the application

- ##### stop the application

  **PS : AS A BEST PRACTICE , IT'S PREFERABLE TO RESPECT THE ORDER OF STOPING THE CONTAINERS , STOPING APPS CONTAINERS FIRST , THEN , NGINX-REVERSE PROXY CONTAINER .**

      - using a terminal, go to project directory
      - run the command `make compose_stop_app`.

- ##### stop the reverse proxy

  - using a terminal, go to project directory
  - run the command `make compose_stop_proxy`.

# Improvements

As an improvement i would add [acme-companion](https://github.com/nginx-proxy/acme-companion) container to work closely with [nginx-proxy](https://github.com/nginx-proxy/nginx-proxy) container so that we can Automated ACME SSL certificate generation for nginx-proxy.

# Contributing

- If you want to contribute to this project and make it better with new ideas or fixing issues, your pull request is very welcomed.
- If you find any issue just put it in the repository issue section.

Thank you.

# Contact

- Email: **t.mohammedhacene@gmail.com**
- Linkedin : **[Tarek MOHAMMED HACENE](https://www.linkedin.com/in/tarekmh/ "Tarek MOHAMMED HACENE")**
