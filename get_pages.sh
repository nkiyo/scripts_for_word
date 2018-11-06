#!/bin/bash

if [ $# -ne 1 ]; then
    echo input docx file path.
    exit 1
fi

docx_file=$1
echo $docx_file

# extract .docx
#unzip $docx_file

# parse pages from app.xml

# remove extracted files
#rm -rf word
#rm -rf docProps
#rm -rf _rels
#rm -f *Content_Types*.xml


