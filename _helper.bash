#!/bin/bash

# This is a deployment script
# Before one can use some initiation is required
# I found this is the best description that works for me
# https://gohugo.io/hosting-and-deployment/hosting-on-github/

unset origin
origin=$(dirname ${BASH_SOURCE[0]})

usage() {
  echo "Usage: $origin [OPTIONS] "
  echo "Options: "
  echo ""
  echo "     worktree:  add gh-pages to git worktree"
  echo "     deploy:    deploy to gh-pages"
  echo ""
  echo ""
}

# Step 1

# git checkout --orphan gh-pages
# git reset --hard
# git commit --allow-empty -m "Initializing gh-pages branch"
# git push origin gh-pages
# git checkout master

echo "MSG: starting deployment $(date)"

add_worktree() {

  echo "MSG: Adding new worktree"
  rm -rf _book
  git worktree add -B gh-pages _book origin/gh-pages

}

deploy_book() {

  book_dir=${1}
  cd ${book_dir}

  build_number=$(git --no-pager log --format=%B -n 1 | sed '/^$/d' | cut -f2 -d" ")
  build_number=$((${build_number} + 1))
  echo "MSG: Build number ${build_number}"

  git add --all
  git commit -m "build ${build_number}"
  cd ..
  git push origin gh-pages

}

case "$1" in
  help|-h|--help)
    usage
    exit
    ;;
  worktree)
	add_worktree
	exit
	;;
  deploy)
	deploy_book _book
	exit
	;;
  *)
    usage
    exit
esac
