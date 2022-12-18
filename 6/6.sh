#!/bin/bash
echo "1 method: cut -d, -f 1 data.csv | uniq -u"
cut -d, -f 1 data.csv | uniq -u

echo "2 method: awk -F "\"*,\"*" '{print $1}' data.csv | uniq -u"
awk -F "\"*,\"*" '{print $1}' data.csv | uniq -u