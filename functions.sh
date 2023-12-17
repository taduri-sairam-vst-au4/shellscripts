#!/bin/bash

ID=$(id -u)

INSTALLATION(){
    if [ $1 -ne 0 ]
    then
        echo "$2 failed"
        exit 1
    else
        echo "$2 success"
    fi
}

if [ $ID -ne 0 ]
then
    echo "not a root user"
    exit 1
else
    echo "root user"
fi

yum install git -y
INSTALLATION $? "Git"
