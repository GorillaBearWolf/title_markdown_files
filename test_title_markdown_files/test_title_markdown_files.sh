#!/bin/bash 2> /dev/null

OLD_FILES=(
    "Test-Markdown_File.md"
    "Test Markdown File.md"
    ".Test-Markdown_File.md"
    ".Test Markdown File.md"
    )
NEW_FILES=(
    "Test-Markdown_File.md"
    ".Test-Markdown_File.md"
    )

for i in "${OLD_FILES[@]}"
do
    rm -f "$i"
done

for i in "${NEW_FILES[@]}"
do
    touch "$i"
done

python3 ../title_markdown_files.py
