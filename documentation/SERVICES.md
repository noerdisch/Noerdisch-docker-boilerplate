[<-- Back to main section](../README.md)

# Services

### App (PHP with Nginx or Apache HTTPd)

Setting       | Value
------------- | -------------
Host          | app:80 and app:443 (ssl)
External Port | 8000 and 8443 (ssl)

### PostgreSQL

Setting       | Value
------------- | -------------
User          | dev (if not changed in env)
Password      | dev (if not changed in env)
Host          | postgres:5432
External Port | 15432


### Solr

Setting       | Value
------------- | -------------
Host          | solr:8983
External Port | 18983
Cores         | docker/solr/conf/solr.xml (data dirs are created automatically)

### Elasticsearch (disabled by default)

Setting       | Value
------------- | -------------
Host          | elasticsearch:9200 and :9300
External Port | 19200 and 19300

### Redis

Setting       | Value
------------- | -------------
Host          | redis
Port          | 6379

### Memcached

Setting       | Value
------------- | -------------
Host          | memcached
Port          | 11211
