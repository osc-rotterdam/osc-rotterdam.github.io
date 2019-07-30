#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "Deploying updates to GitHub...\n"

# make folder for master brach and move it to tmp
cp CNAME public/
cp README.md public/
cp .gitignore public/
TMPDIR=$(dirname $(mktemp))
cp -rav public/ $TMPDIR/

# switch to master branch
git checkout master
git pull --force

# replace public folder
rm * -rf
mv $TMPDIR/public/* ./


# add changes in public to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push --all

# switch back to development branch
git checkout development
