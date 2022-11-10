#!/usr/bin/bash

# a script for updating `index.md` according to subdirectories

echo "[$0 : header] Writing header content into index!"
cat index_header.txt > index.md
cat << EOF >> index.md
**content updated**: $(date +%x\ %X)

EOF

# push each item of subdirectories into index.md as a new item
# generate the subdirectory files for each path
while IFS= read -r file_path
do
    # we wish for file_path to be more readable: 
    echo -ne "\t[$0 : insert] "
    echo -ne "* [${file_path##*/}]($file_path/index.md)\n" | tee -a index.md
    ./generate_directory_files.sh "$file_path"
done < <(find ./content -type d -not -path "./content" -printf '%p %C@\n' \
    | sort -k2,2 -r | awk '{ print $1 }')
