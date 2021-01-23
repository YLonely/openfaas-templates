#!/bin/bash

build() {
    name=${1}
    cd ./$name
    # build
    cd ..
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
            break
        fi
    done
    echo "target $target does not exist"
fi
