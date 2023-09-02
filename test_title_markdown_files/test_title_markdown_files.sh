#!/bin/bash 2> /dev/null

TEST_FILES=(
    "Test Markdown File.md"
    "Test-Markdown_File.md"
    ".Test-Markdown_File.md"
    "Test-Markdown_File.txt"
    ".Test-Markdown_File.txt"
    )

for i in "${TEST_FILES[@]}"
do
    touch "$i"
    echo "$i" | tee -a "$i" &> /dev/null
done

python3 ../title_markdown_files.py

read -p "Press Enter to delete test files..."

for i in "${TEST_FILES[@]}"
do
    rm -f "$i"
done
