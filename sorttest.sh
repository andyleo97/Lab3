#!/bin/bash

var1=$(sed -n '1p' words1.txt)
var2=$(sed -n '2p' words1.txt)
sed -i '1,2d' words1.txt

printf "$var1"
