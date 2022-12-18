#!/bin/bash
cat << EOF
____________________________________________________________________________________
Method1:

a=$1
b=$2
if [[ ${a} -gt ${b} ]]; then echo ${a} ">" ${b};
elif [[ ${a} -eq ${b} ]]; then echo ${a} "=" ${b};
else echo ${a} "<" ${b};
fi

RESULT:
EOF

a=$1
b=$2

if [[ ${a} -gt ${b} ]]; then echo ${a} ">" ${b};
elif [[ ${a} -eq ${b} ]]; then echo ${a} "=" ${b};
else echo ${a} "<" ${b};
fi

cat << EOF
____________________________________________________________________________________
Method2:

a=$1
b=$2

if (( ${a} > ${b} )); then echo ${a} ">" ${b};
elif (( ${a} == ${b} )); then echo ${a} "=" ${b};
else echo ${a} "<" ${b};
fi

RESULT:
EOF

a=$1
b=$2

if (( ${a} > ${b} )); then echo ${a} ">" ${b};
elif (( ${a} == ${b} )); then echo ${a} "=" ${b};
else echo ${a} "<" ${b};
fi