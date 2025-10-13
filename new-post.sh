#!/bin/bash

# Helper script to create new posts

echo "Create a new post"
echo "=================="
echo ""
echo "Select category:"
echo "1) Fundamentals"
echo "2) Projects"
echo "3) Thoughts"
echo ""
read -p "Enter choice (1-3): " choice

case $choice in
    1)
        section="fundamentals"
        ;;
    2)
        section="projects"
        ;;
    3)
        section="thoughts"
        ;;
    *)
        echo "Invalid choice"
        exit 1
        ;;
esac

read -p "Enter post filename (e.g., my-post-name): " filename

if [ -z "$filename" ]; then
    echo "Filename cannot be empty"
    exit 1
fi

hugo new "$section/$filename.md"

echo ""
echo "Post created! Edit it at: content/$section/$filename.md"
echo "Run 'hugo server -D' to preview"
