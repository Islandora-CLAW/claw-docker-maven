# Islandora CLAW: Maven Docker Image

[![Docker Stars](https://img.shields.io/docker/stars/islandora-claw/maven.svg)](https://hub.docker.com/r/islandora-claw/maven/)
[![Docker Pulls](https://img.shields.io/docker/pulls/islandora-claw/maven.svg)](https://hub.docker.com/r/islandora-claw/maven/)
[![Image Size](https://img.shields.io/imagelayers/image-size/islandora-claw/maven/latest.svg)](https://imagelayers.io/?images=islandora-claw/maven:latest)
[![Image Layers](https://img.shields.io/imagelayers/layers/islandora-claw/maven/latest.svg)](https://imagelayers.io/?images=islandora-claw/maven:latest)

### Introduction

Defines the Maven Docker image.

Based on either the
[Open JDK Docker Image](https://github.com/Islandora-CLAW/docker-open-jdk) or
the
[Oracle JDK Docker Image](https://github.com/Islandora-CLAW/docker-oracle-jdk).

### Includes

* Maven 3
* Java 8

### Build Arguments

| Variable      | Required | Default |
|---------------|----------|---------|
| MAVEN_VERSION | no       |   3.3.9 |

**Example:**
```bash
docker build -t islandora-claw/maven .
```

### Environment Variables

| Variable  | Required | Default |
|-----------|----------|---------|
| JAVA_OPTS | no       |         |

**Example (foreground, auto-remove, interactive-shell):**
```bash
docker run --rm -ti islandora-claw/maven ash
```

### Commands

For convenience a number of commands are provided in the [commands](/commands)
folder.

| Command     | Arguments | Defaults | Notes                                                                 |
|-------------|-----------|----------|-----------------------------------------------------------------------|
| build       |           |          | Build this image with the default settings.                           |
| run         |           | ash      | Start container, execute the given arguments as a command, then exit. |
| mvn-install | path      | $PWD     | Perform ```mvn install``` in the given path then exit.                |

### Notes

Eventually we will support running on either Open JDK or Oracle JDK, but
for the moment it only supports Open JDK.

### Maintainers/Sponsors

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

### Development

If you would like to contribute, please get involved with the
[Islandora Fedora 4 Interest Group](https://github.com/Islandora/Islandora-Fedora4-Interest-Group).
We love to hear from you!

If you would like to contribute code to the project, you need to be covered by
an Islandora Foundation
[Contributor License Agreement](http://islandora.ca/sites/default/files/islandora_cla.pdf)
or
[Corporate Contributor Licencse Agreement](http://islandora.ca/sites/default/files/islandora_ccla.pdf).
Please see the [Contributors](http://islandora.ca/resources/contributors) pages
on Islandora.ca for more information.

### License

[GPLv3](http://www.gnu.org/licenses/gpl-3.0.txt)
