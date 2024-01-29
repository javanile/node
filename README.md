# Dockerized Node.js Environment with Updated npm

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Overview

This Docker project provides a containerized Node.js environment, ensuring that npm is always up-to-date in all LTS versions. It includes minor optimizations to enhance the development environment.

### Benefits

- Always up-to-date npm in all Node.js LTS versions.
- Minor improvements for a more efficient development environment.

## How to Use

### Prerequisites

Make sure you have Docker installed on your machine.

### Using `docker run`

To use the Docker image, run the following command:

```bash
docker run -it --rm javanile/node:18-alpine
```

Replace tag with the actual name you give to your Docker image.

### Using docker-compose.yml

You can also use docker-compose.yml to define your service. Create a docker-compose.yml file with the following content:

```yaml
version: '3'

services:
  node-app:
    image: javanile/node:18-alpine
    ports:
      - "3000:3000"
    volumes:
      - ./your/app/directory:/app
```

Replace tag with your Docker image's name and adjust other configurations accordingly.

Then, run the following command:

```bash
docker-compose up
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.
