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
    |-- docker-compose.yml # docker container config
|-- include                # header files
|-- libs                   # dynamic objects
|-- src                    # source files
|-- tests                  # unit tests
    |-- test_main          # unit test execute file
|-- Makefile               # project makefile
|-- README.md              # project readme
```
