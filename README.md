# nginx_on_docker

## usage

```
$ git clone git@github.com:ressy-private/nginx_on_docker.git
$ cd nginx_on_docker
$ docker build -t sample/nginx:0.0 .
$ docker run -d --name sample-nginx -p 80:80 sample/nginx:0.0
$ curl localhost
```

