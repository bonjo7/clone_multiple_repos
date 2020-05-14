#!/bin/bash
apps_file=$1
IFS=,

if [[ "$apps_file" == "" ]]; then echo "please provide the name of the file"; exit 1; fi
if [[ ! -f $apps_file ]]; then echo "$apps_file file not found"; exit 1; fi

header=true
linenum=1

while  read git_url branch

do

	if [[ "$header" == "true" ]]; then header=false; continue; fi
     echo "line = $linenum"
	
	 echo "Git URL: $git_url"
    
	((linenum++))

	 git clone "$git_url" 

	 

done < $apps_file


