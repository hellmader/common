#!/bin/bash

while getopts t:a:s:g: flag
do
    case "${flag}" in
        t) Token=${OPTARG};;
        s) Seriennummer=${OPTARG};;
        g) gitToken=${OPTARG};;
    esac
done

echo "#####################################"

Akkuname="$Seriennummer"
echo "Token: $Token"
echo "Akkuname: $Akkuname"
echo "Seriennummer: $Seriennummer"
echo "GitToken: $gitToken"

echo "#####################################"


curl -s "https://${gitToken}@raw.githubusercontent.com/hellmader/ProfiLink/master/install/install.sh" | bash -s -- -t ${Token}  -s ${Seriennummer}  -g ${gitToken}
