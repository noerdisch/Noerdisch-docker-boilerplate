[<-- Back to main section](../README.md)

# Docker container informations

## Docker layout

Container                 | Description
------------------------- | -------------------------------
app                       | PHP application container with nginx/apache and PHP-FPM and tools (your entrypoint for bash, php and other stuff)
storage                   | Storage container, eg. for Solr data
postgres (optional)       | PostgreSQL database
elasticsearch (optional)  | Elasticsearch server
memcached (optional)      | Memcached server
redis (optional)          | Redis server

The `app/` directory will be mounted under `/app` inside `app` container.

## Docker images
Container                 | Source
------------------------- | -------------------------------
app                       | [WebDevOps Images](https://registry.hub.docker.com/u/webdevops/)
storage                   | [Ubuntu](https://registry.hub.docker.com/_/ubuntu/) *official*
postgres                  | [PostgreSQL](https://registry.hub.docker.com/_/postgres/) *official*
elasticsearch (optional)  | [Elasticsearch](https://registry.hub.docker.com/_/elasticsearch/) *official*
memcached (optional)      | [Memcached](https://registry.hub.docker.com/_/memcached/) *official*
redis (optional)          | [Redis](https://registry.hub.docker.com/_/redis/) *official*

## Environment settings

Environment           | Description
--------------------- | -------------
DOCUMENT_ROOT         | Document root for Nginx and Apache HTTPD, can be absolute or relative (to /docker inside the container).
DOCUMENT_INDEX        | Default document index file for Nginx and Apache HTTPd
CLI_SCRIPT            | Target for "cli" command of main container
CLI_USER              | User which should be used to run CLI scripts (normally www-data, equals php-fpm user)
<br>                  |
TYPO3_CONTEXT         | Context for TYPO3, can be used for TypoScript conditions and AdditionalConfiguration
FLOW_CONTEXT          | Context for FLOW and NEOS
<br>                  |
DNS_DOMAIN            | List of wildcard domains pointing to webserver (eg. for local content fetching)
<br>                  |
PHP_TIMEZONE          | Timezone (date.timezone) setting for PHP (cli and fpm)
EFFECTIVE_UID         | Effective UID for php, fpm und webserver
EFFECTIVE_GID         | Effective GID for php, fpm und webserver

## Xdebug Remote debugger (PhpStorm)

### 1.) Add a server (Preferences -> Languages & Frameworks -> PHP -> Servers).

Setting                          | Value
---------------------------------| -------------
Hostname                         | IP or Hostname of VM
Port                             | 8000
Debugger                         | Xdebug  
Use path mappings                | Check
Path mapping of folder 'app'     | /app/

### 2.) Add a debug connection (Run -> Edit Configurations... -> Connections) and create a new configuration (PHP Web Application).

Setting               | Value
--------------------- | -------------
Server                | Server you created before
Start URL             | /
Browser               | Choose one

Save, set a break point and test the debugger.

## Application cache

Symlink your application cache (eg. typo3temp/) to `/storage/cache/` and it will be stored inside the `storage` container
so it will be accessible within all containers (eg. web or main).
