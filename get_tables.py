#!/usr/bin/env python3
# -*- encoding: utf-8 -*-

from docx import Document 

wordDoc = Document("./sample.docx")

for table in wordDoc.tables:
    for row in table.rows:
        for cell in row.cells:
            print(cell.text)
