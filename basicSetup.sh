#!/bin/sh

# Create and checkout a new branch
git checkout -b base-branch

# Create multiple JS files and commit them
echo "console.log('Content of file1.js');" > file1.js
echo "console.log('Content of file2.js');" > file2.js
echo "console.log('Content of file3.js');" > file3.js
git add file1.js file2.js file3.js
git commit -m "Initial commit with three files."

# Make a series of changes to these files across several commits
echo "console.log('Updated content of file1.js');" >> file1.js
git add file1.js
git commit -m "Updated file1.js."

echo "console.log('Another line in file2.js');" >> file2.js
git add file2.js
git commit -m "Updated file2.js."

echo "console.log('Updated content in file3.js');" >> file3.js
git add file3.js
git commit -m "Updated file3.js."

# Create a new branch from the initial commit and make conflicting changes
git checkout -b feature-branch $(git rev-list HEAD | tail -n 1)

echo "console.log('Feature content in file1.js');" >> file1.js
echo "console.log('Different content in file2.js');" > file2.js
echo "console.log('Another line in file3.js');" >> file3.js
git add file1.js file2.js file3.js
git commit -m "Made changes in feature branch."

echo "Now you should rebase feature-branch onto base-branch"
