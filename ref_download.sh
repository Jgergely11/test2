#!/bin/bash

for i in `cat ref_list.txt`; do curl -OJX GET "https://api.ncbi.nlm.nih.gov/datasets/v2alpha/genome/accession/$i/download?include_annotation_type=CDS_FASTA&filename=$i.zip" -H "Accept: application/zip"; done
