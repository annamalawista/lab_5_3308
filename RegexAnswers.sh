# Name: Anna Malawista
#!/bin/bash
if [ ! -e "$1" ]; then
    echo "Usage: RegexAnswers.sh filename"
    exit
fi
egrep [0-9]$ $1 | wc -l
egrep ^[^AEIOUaeiou] $1 | wc -l
egrep ^[A-Za-z]{12}$ $1 | wc -l
egrep ^[0-9]{3}-[0-9]{3}-[0-9]{4}$ $1 | wc -l
egrep ^303-[0-9]{3}-[0-9]{4}$ $1 | wc -l
egrep ^[AEIOUaeiou].*[0-9]$ $1 | wc -l
egrep geocities.com$ $1 | wc -l
egrep ^[A-Ma-m][A-Za-z]*[\.][A-Za-z\-]*@ $1 | wc -l