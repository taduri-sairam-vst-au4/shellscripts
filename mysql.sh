#!/bin/bash

if [ uid -ne 0 ]
then
echo "you have to be root user"
else
echo "you are a root user"
fi

yum install mysql -y