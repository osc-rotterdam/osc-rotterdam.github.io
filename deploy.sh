#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "Deploying updates to GitHub...\n"

# make folder for master branch and move it to tmp
cp CNAME public/
cp README.md public/
cp .gitignore public/
TMPDIR=$(dirname $(mktemp))
cp -rav public/ $TMPDIR/

# switch to master branch
git checkout master
git config pull.rebase false
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

# Push master branch
git push --all

# switch back to development branch
git checkout development

