# openfaas-templates

This project provides multiple development templates for serverless computing applications. You only need to complete the `handler` file inside the project folder, 
and run `./build.sh [java|golang|nodejs|python|python-ml]`, a container image of the serverless application will be built and saved to the `images` folder.

## requirements
- [buildkit](https://github.com/moby/buildkit)
