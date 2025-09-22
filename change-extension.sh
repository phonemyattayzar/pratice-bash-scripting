#!/bin/bash
printf "%b" "This program is to change file extension in a directory.\n"

# Allowed extensions
allowed_ext=("txt" "yaml" "csv" "json")



if (( $# < 2 )); then 
   printf "%b" "Error: To Complete Operation At Least Need 2 Arguments.\n" >&2
   printf "%b" "Usage: $0 Dir_Name txt\n" >&2

   exit 1
elif (( $# > 2 )); then
   printf "%b" "Error: To Many Arguments.\n" >&2
   printf "%b" "Usage: $0 Dir_Name txt\n" >&2

   exit 2
else 
   printf "%b" "Argument Count Correct. Procedding...\n"
fi 

dir_path="$1"
file_extension="$2"


cd "$dir_path" || { echo "Directory not found"; exit 3; }

count=$(ls -1 "$dir_path" | wc -l)
echo "There are total $count files+dir in $dir_path"
ls -ltr

echo "Changing File Extension to $file_extension"
for file in "$dir_path"/*; do
    if [ -f "$file" ]; then
        
        

        case "$file_extension" in
             txt|yaml|csv|json)
                 name="${file%.*}"
                 ext="${file##*.}"
                 if [ "$ext" == "sh" ]; then
                    echo "Skipping shell script: $file"
                    continue

                 fi
                 if [ "$file_extension" != ext ]; then 
                  newfile="${name}.${file_extension}"
                  mv "$file" "$newfile"
                  echo "Renaming $file to $newfile"
                 else
                  echo "$file already has .$file_extension"
                 fi
       
              
                 ;;


             *)
                echo "Unknown File Extension Cannot Continue" >&2
                # Show allowed extensions to the user
                printf "You can use the following file extensions: %s\n" "${allowed_ext[*]}"
                exit 4

         esac
    fi
done
echo "Operation Success"


