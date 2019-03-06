#!/bin/bash -x

for i in $(vbmc list | awk -F \| '{print $2}' | tail -16)
do
vbmc start $i
done

