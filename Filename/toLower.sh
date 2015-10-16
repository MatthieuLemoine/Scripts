#!/bin/bash

for i in *
 do new=`echo "$i" | sed -e 's/\([A-Z]\)/\_\1/g' -e 's/\_//' | tr '[:upper:]' '[:lower:]'`
 mv "$i" "$new"
done

