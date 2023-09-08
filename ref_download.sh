#!/bin/bash


### Download all archives present in assembly list (shell script)

for i in `cat assembly_list.txt`; do curl -OJX GET "https://api.ncbi.nlm.nih.gov/datasets/v2alpha/genome/accession/$i/download?include_annotation_type=CDS_FASTA&filename=$i.zip" -H "Accept: application/zip"; done
