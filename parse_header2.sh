#!/bin/bash
for i in *; do 
awk -i inplace '{if($0~/^>/) {print $1, $0}else {print $0}}' $i; 
sed -i 's/_cds_.* >//' $i;
sed -i 's/>lcl/>ref/g' $i;
sed -i 's/cl|/|cds|/g' $i;
sed -i 's/_cds_/|cds|/g' $i;
sed -i 's/l|cds|/|cds|/g' $i; done
