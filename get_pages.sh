#!/bin/bash

if [ $# -ne 1 ]; then
    echo "input 1 arg (*.docx) file path."
    exit 1
fi

docx_file=$1
if [[ $docx_file != *.docx ]]; then
    echo input .docx file path.
    exit 1
fi
if [ ! -f $docx_file ]; then
    echo "${docx_file} not found."
    exit 1
fi

# extract .docx
unzip -q $docx_file

# parse pages from app.xml
pages=$(xmllint --xpath "//*[local-name()='Pages']/text()" ./docProps/app.xml)
echo $pages

# remove extracted files
rm -rf word
rm -rf docProps
rm -rf _rels
rm -f *Content_Types*.xml

