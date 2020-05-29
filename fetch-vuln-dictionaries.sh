#!/bin/bash

mkdir dictionary
cd dictionary

echo '# fetching vulnerability dictionary from NVD...'
for i in `seq 2002 $(date +"%Y")`; do go-cve-dictionary fetchnvd -years $i; done

echo '# fetching vulnerability dictionary from JVN...'
for i in `seq 1998 $(date +"%Y")`; do go-cve-dictionary fetchjvn -years $i; done