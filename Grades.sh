# Name: Anna Malawista
#!/bin/bash
if [ ! -e "$1" ]; then
    echo "Usage: Grades.sh filename"
    exit
fi
sort -k3,3 -k2,2 -k1 "$1" | while read line; do
    grade1=$( echo "$line" | cut -d " " -f4 )
    grade2=$( echo "$line" | cut -d " " -f5 )
    grade3=$( echo "$line" | cut -d " " -f6 )
    sum=$[ grade1 + grade2 + grade3 ]
    avg=$[ sum/3 ]
    ID=$( echo "$line" | cut -d " " -f1 )
    first=$( echo "$line" | cut -d " " -f2 )
    last=$( echo "$line" | cut -d " " -f3 )
    printf "%s [%s] %s, %s\n" "$avg" "$ID" "$last" "$first"
done 