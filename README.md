# fakes3-docker

A container with [fakes3](https://github.com/jubos/fake-s3) for local development.

## Env vars

We added two env vars on Dockerfile, so you can pass your license key and a custom port if needed:

```ssh
FAKES3_TCP=4567 #default port 
LICENSE=123123  #license key  
```

## Usage

Docker run:
```ssh
$ docker run rflpazini/fakes3-docker:latest -e FAKES3_TCP=4568 -e LICENSE=1234556
```

Docker Compose:
```ssh
    fakes3:
        image: rflpazini/fakes3-docker:latest
        environment:
            - LICENSE="454545445"
        ports:
            -   '4567:4567'
        volumes:
            -   ./tmp/fakes3:var/lib/fakes3/data
```

