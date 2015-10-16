#!/bin/bash

for i in *
 do new=`echo "$i" | sed -e 's/./\U&/'`
 mv "$i" "$new"
done

