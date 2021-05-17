#!/bin/bash
echo 'I am curating the result.\n'
echo '' > result.txt

for pmid in `cat pmid_MM.txt`
do
    curl "https://www.ncbi.nlm.nih.gov/research/pubtator-api/publications/export/pubtator?pmids=$pmid" >> result.txt
    sleep 1s
done
