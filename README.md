# Islandora CLAW: Maven Docker Image

[![Docker Stars](https://img.shields.io/docker/stars/islandora/claw-maven.svg)](https://hub.docker.com/r/islandora/claw-maven/)
[![Docker Pulls](https://img.shields.io/docker/pulls/islandora/claw-maven.svg)](https://hub.docker.com/r/islandora/claw-maven/)

## Introduction

Defines the Maven Docker image.

Based on [OpenJDK Docker Image](https://github.com/Islandora-CLAW/claw-docker-open-jdk).

## Includes

* Maven 3
* Java 8

## Build Arguments

| Variable      | Required | Default |
|---------------|----------|---------|
| MAVEN_VERSION | no       |   3.3.9 |

**Example:**
```bash
docker build -t islandora/claw-maven .
```

## Environment Variables

| Variable  | Required | Default |
|-----------|----------|---------|
| JAVA_OPTS | no       |         |

**Example (foreground, auto-remove, interactive-shell):**
```bash
docker run --rm -ti islandora/claw-maven ash
```

## Commands

For convenience a number of commands are provided in the [commands](/commands) folder.

| Command     | Arguments | Defaults | Notes                                                                 |
|-------------|-----------|----------|-----------------------------------------------------------------------|
| build       |           |          | Build this image with the default settings.                           |
| run         |           | ash      | Start container, execute the given arguments as a command, then exit. |
| mvn-install | path      | $PWD     | Perform ```mvn install``` in the given path then exit.                |

## Notes

Eventually we will support running on either OpenJDK or Oracle JDK, but for the moment it only supports OpenJDK.

## Maintainers/Sponsors

* UPEI
* discoverygarden inc.
* LYRASIS
* McMaster University
* University of Limerick
* York University
* University of Manitoba
* Simon Fraser University
* PALS
* American Philosophical Society
* common media inc.

Current maintainers:

* [Nigel Banks](https://github.com/nigelgbanks)
* [Nick Ruest](https://github.com/ruebot)

## Development

If you would like to contribute, please get involved by attending our weekly [Tech Call](https://github.com/Islandora-CLAW/CLAW/wiki). We love to hear from you!

If you would like to contribute code to the project, you need to be covered by an Islandora Foundation [Contributor License Agreement](http://islandora.ca/sites/default/files/islandora_cla.pdf) or [Corporate Contributor Licencse Agreement](http://islandora.ca/sites/default/files/islandora_ccla.pdf). Please see the [Contributors](http://islandora.ca/resources/contributors) pages on Islandora.ca for more information.

## License

[MIT](https://opensource.org/licenses/MIT)
