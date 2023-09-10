#!/bin/bash
for i in *; do  
sed -i 's/_cds_.* >//' $i;
sed -i 's/>lcl/>ref/g' $i;
sed -i 's/cl|/|cds|/g' $i;
sed -i 's/_cds_/|cds|/g' $i;
sed -i 's/l|cds|/|cds|/g' $i; done
