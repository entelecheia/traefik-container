# Traefik Container

[![version-image]][release-url]
[![release-date-image]][release-url]
[![license-image]][license-url]

A ready-to-use Docker container to efficiently run Traefik

- GitHub: [https://github.com/entelecheia/traefik-container][repo-url]

This project offers a ready-to-use Docker container, tailor-made to efficiently run [Traefik](https://traefik.io/traefik/). Traefik is a modern HTTP reverse proxy and load balancer, known for being user-friendly and effective.

Here are some advantages of using Traefik:

- Makes things easier by putting all your apps behind easy-to-remember URLs. Accessing your apps becomes straightforward and efficient.

- Adds a simple but strong HTTP authentication for all your apps. This boosts your apps' security by allowing only authorized users.

- Improves security by including necessary headers directly into your apps' web interfaces. This keeps the user experience smooth, while keeping your apps safe.

- Enhances safety by removing the need for individual app port forwarding. This way, your apps are not exposed directly to the internet, considerably reducing security risks.

- Lastly, Traefik allows automatic operations. This saves time and effort, making the whole process more efficient.

## Prerequisites

- Docker
- Docker Compose

## Run Traefik

Start the Docker container:

```bash
make docker-up-app
```

This will start a Docker container with the image built in the previous step. The container will run a bash lauch script that starts the application.

## Volumes

The `docker-compose.app.yaml` file specifies several volumes that bind mount directories on the host to directories in the container. These include the cache, the workspace directory, and the scripts directory. Changes made in these directories will persist across container restarts.

## Troubleshooting

If you encounter any issues with this setup, please check the following:

- Make sure Docker and Docker Compose are installed correctly.
- Ensure the environment variables in the `docker.app.env` file are correctly set.
- Check the Docker and Docker Compose logs for any error messages.

## Environment Variables

In Docker, environment variables can be used in the `docker-compose.app.yaml` file to customize the behavior of the services.

The `docker-compose` command has an `--env-file` argument, but it's used to set the environment variables for the services defined in the `docker-compose.yaml` file, not for the `docker-compose` command itself. The variables defined in the `--env-file` will not be substituted into the `docker-compose.yaml` file.

However, the environment variables we set in the `.docker/docker.app.env` file are used in the `docker-compose.app.yaml` file. For example, the `$BUILD_FROM` variable is used to set the base image for the Docker build. Therefore, we need to export these variables to the shell environment before running the `docker-compose` command.

This method also allows us to use shell commands in the variable definitions, like `"$(whoami)"` for the `USERNAME` variable, which wouldn't be possible if we used the `--env-file` argument. Shell commands in the `.env` file are not evaluated.

### Files for Environment Variables

- `.docker/docker.common.env`: Common environment variables for all Docker images.
- `.docker/docker.base.env`: Environment variables for the base Docker image.
- `.docker/docker.app.env`: Environment variables for the application Docker image.
- `.env.secret`: Secret environment variables that are not committed to the repository.

## Changelog

See the [CHANGELOG] for more information.

## Contributing

Contributions are welcome! Please see the [contributing guidelines] for more information.

## License

This project is released under the [MIT License][license-url].

## Credits

- [Traefik](https://traefik.io/traefik/)
- [docker-traefik](https://github.com/htpcBeginner/docker-traefik)

<!-- Links: -->

[license-image]: https://img.shields.io/github/license/entelecheia/traefik-container
[license-url]: https://github.com/entelecheia/traefik-container/blob/main/LICENSE
[version-image]: https://img.shields.io/github/v/release/entelecheia/traefik-container?sort=semver
[release-date-image]: https://img.shields.io/github/release-date/entelecheia/traefik-container
[release-url]: https://github.com/entelecheia/traefik-container/releases
[repo-url]: https://github.com/entelecheia/traefik-container
[changelog]: https://github.com/entelecheia/traefik-container/blob/main/CHANGELOG.md
[contributing guidelines]: https://github.com/entelecheia/traefik-container/blob/main/CONTRIBUTING.md

<!-- Links: -->
