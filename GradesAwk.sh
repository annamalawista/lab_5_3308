# Name: Anna Malawista
#!/bin/bash
if [ ! -e "$1" ]; then
    echo "Usage: GradesAwk.sh filename"
    exit
fi
awk '{sum_grades=$4+$5+$6; grade_avg=int(sum_grades/3); print grade_avg, "["$1"]", $3",", $2 | "sort -k3 -k2 -k1" }' $1
