#!/bin/bash

for file in /home/sap/t/table/*
do
    # commands to execute for each file
    mysql -h 192.168.0.22 -u hakim -psap123ok trs  < $file;
done
