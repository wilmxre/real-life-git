#!/bin/bash

# Ensure the script stops if any command fails
set -e

# Commands
echo row > test.txt
git add -A && git commit -m "Adding first row"

echo row >> test.txt
git add -A && git commit -m "Adding second row"

echo row >> test.txt
git add -A && git commit -m "Adding third row"

echo your >> test.txt
git add -A && git commit -m "Adding the word 'your'"

echo boat >> test.txt
git add -A && git commit -m "Adding the word 'boat'"

echo gently >> test.txt
git add -A && git commit -m "Adding the word 'gently'"

sed -i -e 's/boat/car/g' test.txt 
git add -A && git commit -m "Changing the word 'boat' to 'car'"

echo down >> test.txt
git add -A && git commit -m "Adding the word 'down'"

echo the >> test.txt
git add -A && git commit -m "Adding the word 'the'"

echo stream >> test.txt
git add -A && git commit -m "Adding the word 'stream'"

# Notify user of completion
echo "Script has completed executing all commands."
