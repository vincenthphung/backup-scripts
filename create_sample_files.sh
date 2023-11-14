#!/bin/bash

# Directories to create sample files in
DOC_DIR="$HOME/Documents"
PIC_DIR="$HOME/Pictures"

# Create sample text files in Documents
for i in {1..3}; do
    echo "This is a sample text file number $i" > "$DOC_DIR/sample_text_$i.txt"
done

# Create sample image files in Pictures
# Using base64 encoded string for a small red dot image
BASE64_IMAGE="iVBORw0KGgoAAAANSUhEUgAAAAUA\
AAAFCAYAAACNbyblAAAAHElEQVQI12P4\
//8/w38GIAXDIBKE0DHxgljNBAAO\
9TXL0Y4OHwAAAABJRU5ErkJggg=="

for i in {1..3}; do
    echo $BASE64_IMAGE | base64 --decode > "$PIC_DIR/sample_image_$i.png"
done

echo "Sample files created."

