#!/bin/bash

# This is a deployment script
# Before one can use some initiation is required
# I found this is the best description that works for me
# https://gohugo.io/hosting-and-deployment/hosting-on-github/

# Step 1

# git checkout --orphan gh-pages
# git reset --hard
# git commit --allow-empty -m "Initializing gh-pages branch"
# git push origin gh-pages
# git checkout master

# Step 2
echo "MSG: starting deployment $(date)"

#echo "MSG: Stage 1 adding new worktree"

#rm -rf _book
#git worktree add -B gh-pages _book origin/gh-pages

# Step 3

#echo "MSG: Stage 2 building $(date)"

cd _book # build directory

build_number=$(git --no-pager log --format=%B -n 1 | sed '/^$/d' | cut -f2 -d" ")
build_number=$((${build_number} + 1))
echo "MSG: Build number ${build_number}"

git add --all
git commit -m "build ${build_number}"
cd ..
git push origin gh-pages
