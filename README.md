# [full stack apache2 Magento for everyone with docker compose](https://github.com/damalis/full-stack-apache2-magento-for-everyone-with-docker-compose)

If You want to build a website with Magento at short time;

#### Full stack Apache2 Magento:
<p align="left"> <a href="http://www.magento.com" target="_blank" rel="noreferrer"> <img src="https://avatars.githubusercontent.com/u/168457?s=200&v=4" alt="Magento" height="40" width="40"/> </a>&nbsp;&nbsp;&nbsp; <a href="https://www.docker.com/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/docker/docker.png" alt="docker" width="40" height="40" width="40"/> </a>&nbsp;&nbsp;&nbsp; <a href="https://mariadb.org/" target="_blank" rel="noreferrer"> <img src="https://avatars.githubusercontent.com/u/5877084?s=200&v=4" alt="mariadb" height="50" width="50"/> </a>&nbsp;&nbsp;&nbsp; <a href="https://www.apache.org" target="_blank" rel="noreferrer"> <img src="https://avatars.githubusercontent.com/u/47359?s=200&v=4" alt="apache2" height="40" width="40"/> </a>&nbsp;&nbsp;&nbsp; <a href="https://www.php.net" target="_blank" rel="noreferrer"> <img src="https://avatars.githubusercontent.com/u/25158?s=200&v=4" alt="php" height="40" width="40"/> </a>&nbsp;&nbsp;&nbsp; <a href="https://redis.io" target="_blank" rel="noreferrer"> <img src="https://avatars.githubusercontent.com/u/1529926?s=200&v=4" alt="redis" height="40" width="40"/> </a>&nbsp;&nbsp;&nbsp; 
<a href="https://www.elastic.co/" target="_blank" rel="noreferrer"> <img src="https://avatars.githubusercontent.com/u/6764390?s=200&v=4" alt="elasticsearch" height="40" width="40"/> </a>&nbsp;&nbsp;&nbsp; <a href="https://www.varnish-software.com/" target="_blank" rel="noreferrer"> <img src="https://avatars.githubusercontent.com/u/577014?s=200&v=4" alt="varnish" height="40" width="40"/> </a>&nbsp;&nbsp;&nbsp; <a href="#" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/bash/bash.png" alt="Bash" height="50" width="50" /> </a>&nbsp;&nbsp;&nbsp; 
<a href="https://www.phpmyadmin.net/" target="_blank" rel="noreferrer"> <img src="https://avatars.githubusercontent.com/u/1351977?s=200&v=4" alt="phpmyadmin" height="40" width="40"/> </a>&nbsp;&nbsp;&nbsp; <a href="https://letsencrypt.org/" target="_blank" rel="noreferrer"> <img src="https://avatars.githubusercontent.com/u/17889013?s=200&v=4" alt="letsencrypt" height="40" width="40"/> </a>&nbsp;&nbsp;&nbsp; <a href="https://www.portainer.io/?hsLang=en" target="_blank" rel="noreferrer"> <img src="https://avatars.githubusercontent.com/u/22225832?s=200&v=4" alt="portainer" height="40" width="40"/> </a> </p>

Plus, manage docker containers with Portainer.

#### With this project you can quickly run the following:

- [Magento](https://github.com/magento) - [php-fpm](https://hub.docker.com/_/php?tab=tags&page=1&name=fpm)
- [webserver (apache2/httpd)](https://hub.docker.com/_/httpd)
- [certbot (letsencrypt)](https://hub.docker.com/r/certbot/certbot)
- [phpMyAdmin](https://hub.docker.com/r/phpmyadmin/phpmyadmin/)
- [database](https://hub.docker.com/_/mariadb)
- [redis](https://hub.docker.com/_/redis)
- [varnish](https://hub.docker.com/_/varnish)
- [elasticsearch](https://github.com/elastic)
- [backup](https://hub.docker.com/r/futurice/docker-volume-backup)

#### For certbot (letsencrypt) certificate:

- [Set DNS configuration of your domain name](https://support.google.com/a/answer/48090?hl=en)

#### IPv4/IPv6 Firewall
Create rules to open ports to the internet, or to a specific IPv4 address or range.

- http: 80
- https: 443
- portainer: 9001
- phpmyadmin: 9090

#### Magento authentication keys

The repo.magento.com repository is where Adobe Commerce and Magento Open Source and third-party Composer packages are stored and requires authentication.
Use your Commerce Marketplace account to generate a pair of 32-character authentication keys to access the repository

Get your authentication keys: [https://experienceleague.adobe.com/docs/commerce-operations/installation-guide/prerequisites/authentication-keys.html?lang=en](https://experienceleague.adobe.com/docs/commerce-operations/installation-guide/prerequisites/authentication-keys.html?lang=en)

#### How you set vm.max_map_count depends on your platform

The following requirements and recommendations apply when running Elasticsearch in Docker in production.

[https://www.elastic.co/guide/en/elasticsearch/reference/8.5/docker.html#_set_vm_max_map_count_to_at_least_262144](https://www.elastic.co/guide/en/elasticsearch/reference/8.5/docker.html#_set_vm_max_map_count_to_at_least_262144)

#### 2 GB RAM

Upgrading the applications and extensions you obtain from the Commerce Marketplace and other sources can require up to 2 GB of RAM. If you are using a system with less than 2 GB of RAM, we recommend you create a [swap file](https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-20-04); otherwise, your upgrade might fail.

#### Contents:

- [Auto Configuration and Installation](#automatic)
- [Requirements](#requirements)
- [Manual Configuration and Installation](#manual)
- [Portainer Installation](#portainer)
- [Usage](#usage)
	- [Website](#website)
	- [Webserver](#webserver)
	- [Database](#database)
	- [Redis](#redis)
	- [Varnish](#varnish)
	- [Elasticsearch](#elasticsearch)
	- [phpMyAdmin](#phpmyadmin)
	- [backup](#backup)					  

## Automatic

### Exec install shell script for auto installation and configuration

download with

```
git clone https://github.com/damalis/full-stack-apache2-magento-for-everyone-with-docker-compose.git
```

Open a terminal and `cd` to the folder in which `docker-compose.yml` is saved and run:

```
cd full-stack-apache2-magento-for-everyone-with-docker-compose
chmod +x install.sh
./install.sh
```

## Requirements

Make sure you have the latest versions of **Docker** and **Docker Compose** installed on your machine.

- [How install docker](https://docs.docker.com/engine/install/)
- [How install docker compose](https://docs.docker.com/compose/install/)

Clone this repository or copy the files from this repository into a new folder. In the **docker-compose.yml** file you may change the database from MariaDB to MySQL.

Make sure to [add your user to the `docker` group](https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user).

## Manual		 
### Configuration

download with
```
git clone https://github.com/damalis/full-stack-apache2-magento-for-everyone-with-docker-compose.git
```

Open a terminal and `cd` to the folder in which `docker-compose.yml` is saved and run:

```
cd full-stack-apache2-magento-for-everyone-with-docker-compose
```

Copy the example environment into `.env`

```
cp env.example .env
```

Edit the `.env` file to change values of ```LOCAL_TIMEZONE```, ```DOMAIN_NAME```, ```DIRECTORY_PATH```, ```LETSENCRYPT_EMAIL```, ```DB_USER```, ```DB_PASSWORD```, ```DB_NAME```, ```MYSQL_ROOT_PASSWORD```, ```PMA_CONTROLUSER```, ```PMA_CONTROLPASS```, ```PMA_HTPASSWD_USERNAME``` and ```PMA_HTPASSWD_PASSWORD```.

LOCAL_TIMEZONE=[to see local timezones](https://docs.diladele.com/docker/timezones.html)

DIRECTORY_PATH=```pwd``` at command line

and

```
cp ./phpmyadmin/apache2/sites-available/default-ssl.sample.conf ./phpmyadmin/apache2/sites-available/default-ssl.conf
```

change example.com to your domain name in ```./phpmyadmin/apache2/sites-available/default-ssl.conf``` file.

### Installation

Firstly: will create external volume

```
docker volume create --driver local --opt type=none --opt device=${DIRECTORY_PATH}/certbot --opt o=bind certbot-etc
```

```
docker compose up -d
```

then reloading for webserver ssl configuration

```
docker container restart webserver
```

The containers are now built and running. You should be able to access the Magento installation with the configured IP in the browser address. `https://example.com`.

For convenience you may add a new entry into your hosts file.

## Portainer

```
docker volume create portainer_data
docker compose -f portainer-docker-compose.yml -p portainer up -d 
```
manage docker with [Portainer](https://www.portainer.io/) is the definitive container management tool for Docker, Docker Swarm with it's highly intuitive GUI and API. 

You can also visit `https://example.com:9001` to access portainer after starting the containers.

## Usage

#### You could manage docker containers without command line with portainer.

### Show both running and stopped containers

The docker ps command only shows running containers by default. To see all containers, use the -a (or --all) flag:

```
docker ps -a
```

### Starting containers

You can start the containers with the `up` command in daemon mode (by adding `-d` as an argument) or by using the `start` command:

```
docker compose start
```

### Stopping containers

```
docker compose stop
```

### Removing containers

To stop and remove all the containers use the `down` command:

```
docker compose down
```

to remove portainer and the other containers
```
docker rm -f $(docker ps -a -q)
```

Use `-v` if you need to remove the database volume which is used to persist the database:

```
docker compose down -v
```

to remove external certbot-etc and portainer and the other volumes

```
docker volume rm $(docker volume ls -q)
```

to remove portainer and the other images
```
docker rmi $(docker image ls -q)
```

### Project from existing source

Copy all files into a new directory:

You can now use the `up` command:

```
docker compose up -d
```

### Docker run reference

[https://docs.docker.com/engine/reference/run/](https://docs.docker.com/engine/reference/run/)

### Website

You should see the "Luma..." page in your browser. If not, please check if your PHP installation satisfies Magento's requirements or ```docker container restart varnish```

```
https://example.com
```

```
Username: admin
Password: admin123
```

add or remove code in the ./php-fpm/php/conf.d/security.ini file for custom php.ini configurations

[https://www.php.net/manual/en/configuration.file.php](https://www.php.net/manual/en/configuration.file.php)

You should make changes custom host configurations ```./php-fpm/php-fpm.d/z-www.conf``` then must restart service, FPM uses php.ini syntax for its configuration file - php-fpm.conf, and pool configuration files.

[https://www.php.net/manual/en/install.fpm.configuration.php](https://www.php.net/manual/en/install.fpm.configuration.php)

```
docker container restart magento
```

add and/or remove magento site folders and files with any ftp client program in ```./magento``` folder.
<br />You can also visit `https://example.com` to access website after starting the containers.

#### Webserver

add or remove code in the ```./webserver/extra/httpd-ssl.conf``` file for custom apache2/httpd configurations

[https://httpd.apache.org/docs/2.4/](https://httpd.apache.org/docs/2.4/)

#### Database

[https://mariadb.com/kb/en/configuring-mariadb-with-option-files/](https://mariadb.com/kb/en/configuring-mariadb-with-option-files/)

#### Redis

you can usually find your Redis configuration in the following file: ```./redis/redis.conf```
To optimize the Redis instance for your requirements, you get best results by using a dedicated instance for each session, Commerce cache and FPC.

[https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cache/redis/config-redis.html?lang=en](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cache/redis/config-redis.html?lang=en)

#### Varnish

Configure Varnish: [https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cache/varnish/config-varnish.html?lang=en](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cache/varnish/config-varnish.html?lang=en)

#### Elasticsearch

Magento Open Source 2.4; installations must be configured to use Elasticsearch.

[https://devdocs.magento.com/guides/v2.3/config-guide/elasticsearch/es-overview.html](https://devdocs.magento.com/guides/v2.3/config-guide/elasticsearch/es-overview.html)

### phpMyAdmin

You can add your own custom config.inc.php settings (such as Configuration Storage setup) by creating a file named config.user.inc.php with the various user defined settings in it, and then linking it into the container using:

```
./phpmyadmin/config.user.inc.php
```

You can also visit `https://example.com:9090` to access phpMyAdmin after starting the containers.

The first authorize screen(htpasswd;username or password) and phpmyadmin login screen the username and the password is the same as supplied in the `.env` file.

### backup

This will back up the all files and folders, once per day, and write it to ./backups with a filename like backup-2022-02-07T16-51-56.tar.gz 

#### example for crontab file on the host machine

##### # old docker backup folder remove

```
50 23 * * * find ${DIRECTORY_PATH}/backups/backup* -type f -mtime +1 | xargs rm
```

##### # backup exclude magento, backups folders in ${DIRECTORY_PATH}

```
00 01 * * * tar -czvf ${DIRECTORY_PATH}/backups/'backup-example.com-'$(date +"\%Y-\%m-\%dT\%H-\%M-\%S")'.tar.gz' --exclude='backups' ${DIRECTORY_PATH}
```

[CronHowto](https://help.ubuntu.com/community/CronHowto)
