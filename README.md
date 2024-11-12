## gh-actions-webapp-demo 

[![CI-CD pipeline](https://github.com/wood-brandon/devops-demo-project/workflows/CI/badge.svg)](https://github.com/wood-brandon/devops-demo-project/actions/workflows/ci-cd-pipeline.yml)  ![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=plastic&logo=docker&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=plastic&logo=githubactions&logoColor=white) ![NodeJS](https://img.shields.io/badge/node.js-6DA55F?style=plastic&logo=node.js&logoColor=white)

Example implementation of Node + Express JS webapp setup that utilizes GitHub actions to build and test the project, using Docker for containerization.

### Workflow

The pipeline has three main stages:
  1. Checkout repo and set up node.js + dependencies
  2. Build the docker image
  3. Run tests via `npm test` on the built image
  4. If successful, push the docker image

### Usage

The associated GH actions workflow manages building and pushing a new docker container on each push of the `release/*` branch in accordance with [git flow](https://datasift.github.io/gitflow/IntroducingGitFlow.html).

You can clone the repo, then set the below secret values:
  - DOCKER_IMAGE_NAME = name of image to push (it will tag with the commit SHA)
  - DOCKER_USERNAME  = your dockerhub username
  - DOCKER_TOKEN = [PAT](https://docs.docker.com/security/for-developers/access-tokens/) for dockerhub
