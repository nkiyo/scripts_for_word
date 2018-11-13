#!/usr/bin/env python3
# -*- encoding: utf-8 -*-

from docx import Document
import re

def iter_headings(paragraphs):
    for paragraph in paragraphs:
        if paragraph.style.name.startswith('Heading'):
            yield paragraph

wordDoc = Document("./headings.docx")

for heading in iter_headings(wordDoc.paragraphs):
    #print(f'paragraph.style.name="{heading.style.name}"')
    heading_level = re.search('Heading (\d+)', heading.style.name).group(1)
    print(f'heading_level={heading_level}')
    print(f'paragraph.text="{heading.text}"')


