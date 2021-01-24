#!/bin/bash

build() {
    name=${1}
    echo "build with proxy http_proxy=$http_proxy https_proxy=$https_proxy"
    buildctl build --opt build-arg:http_proxy=$http_proxy --opt build-arg:https_proxy=$https_proxy --frontend=dockerfile.v0 --local context=./$name --local dockerfile=./$name --output type=docker,dest=./images/$name-function.tar,name="$name:function"
}

function_names=(golang java nodejs python python-ml)
target=${1}
mkdir images >/dev/null 2>&1
if [ $target = "all" ]; then
    echo "Making all images to ./images dir"
    for name in ${function_names[*]}; do
        build $name
    done
else
    echo "Making the $target image to ./images dir"
    for name in ${function_names[*]}; do
        if [ $name = $target ]; then
            build $target
            exit
        fi
    done
    echo "target $target does not exist"
fi
