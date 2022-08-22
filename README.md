# c-project-startupkit
Project templete for C and C++

## Requiremets
- docker
- docker-compose

If you don't use docker, install the following packages.  
- Compiler
    - llvm or gcc(or g++)
- Unit test Framework
    - CppUTest

## Directry structure
```
|-- bin
    |-- my_app             # execute file
|-- assets                 # static data etc..
|-- build                  # static objects
|-- docker                 # docker files
    |-- build              # build server container
        |-- Dockerfile
    |-- test               # unit test server container
        |-- Dockerfile
    |-- docker-compose.yml # docker container config
|-- include                # header files
|-- libs                   # dynamic objects
|-- src                    # source files
|-- tests                  # unit tests
    |-- test_main          # unit test execute file
|-- compile_flags.txt      # compile options for clang (use header file path search)
|-- Makefile               # project makefile
|-- README.md              # project readme
```

## Usage
### build
`` sh
make
```

### run tests
``` sh
make test
```

### clean build files
``` sh
make clean
```

### start & stop docker containers
``` sh
make start.docker  # wrapped `docker-compose up -d`
make stop.docker   # wrapped `docker-compose down`
```

If you start specific service, run the following command.  
``` sh
cd ./docker
docker-compose up -d service_name
```
