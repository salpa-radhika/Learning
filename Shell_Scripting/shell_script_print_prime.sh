#!/bin/bash

###########
#Author: RADHIKA
#date: 30/5/2023
###
#version: V1

########

for i in {1..20}; do 
if ([ '$i % 3' == 0 ]) 
#|| [' expr $i % 5' == 0 ]) && [' expr $i % 15' !=0 ];
then 
  echo $i
fi;
done
