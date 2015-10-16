#!/bin/bash

for file in *@2x.png
do
 mv "$file" "${file/@2x.png/.png}"
done
