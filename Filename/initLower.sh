#!/bin/bash

for i in *
 do new=`echo "$i" | sed -e 's/./\L&/'`
 mv "$i" "$new"
done

