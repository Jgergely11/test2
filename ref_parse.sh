#!/bin/bash
for i in *; do 
sed -i 's/_cds_/ cds_/g' $i;
sed -i 's/>lcl|/>/g' $i; done
