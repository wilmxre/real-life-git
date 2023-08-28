#!/bin/sh

# Create and checkout a base branch named "mega-base-branch"
git checkout -b mega-base-branch

# Initial creation of JS files
for i in $(seq 1 5); do
    echo "console.log('Base content in file${i}.js');" > "file${i}.js"
    git add "file${i}.js"
    git commit -m "[x] Initial content of file${i}.js on base branch."
done

# Create changes that will conflict later on
for i in $(seq 1 5); do
    echo "console.log('Change number ${i} on base branch in file${i}.js');" >> "file${i}.js"
    git add "file${i}.js"
    git commit -m "[x] Base branch change ${i} for file${i}.js."
done

# Checkout a feature branch from the initial state
git checkout -b mega-feature-branch $(git log --oneline | grep 'Initial content' | tail -1 | cut -d' ' -f1)

# Create conflicting changes in the feature branch
for i in $(seq 1 5); do
    echo "console.log('Conflicting change number ${i} on feature branch in file${i}.js');" >> "file${i}.js"
    git add "file${i}.js"
    git commit -m "[y] Feature branch conflicting change ${i} for file${i}.js."
done

echo "Script has completed. Use GitKraken to rebase mega-feature-branch onto mega-base-branch."
