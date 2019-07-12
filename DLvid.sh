#!/bin/bash

wget $1 
cat videos | grep -o "/watch?v=[^\"]*" | cut -d "\\" -f 1 > allVids.txt

while read vid; do
	youtube-dl https://www.youtube.com$vid
done < allVids.txt
