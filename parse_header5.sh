#!/bin/bash

for i in *; do 
awk -i inplace '{if($0~/^>/) {print $1, $1, $0}else {print $0}}' $i; done
