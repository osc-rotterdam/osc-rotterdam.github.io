#
# under development, 
# DO NOT USE THIS SCRIPT
#

library(git2r)

public_folder = "public"

# build site
blogdown::build_site()

message("Deploying updates to GitHub...")

# copy public folder to tmp
ok = file.copy(public_folder, tempdir(), recursive=TRUE)

# switch to master branch
checkout(branch = "master")

# replace public folder
unlink(public_folder, recursive=TRUE)
tmp = file.path(tempdir(), public_folder)
ok = file.copy(tmp, ".", recursive=TRUE)
unlink(tmp, recursive=TRUE)

# add changes in public to git
git2r::add(path=public_folder)

# Commit changes.
commit(message = paste("rebuilding site", format(Sys.time(), "%b %d %H:%M")),
       all = TRUE)

# Push source and build repos.
push(repo, set_upstream = TRUE)

# switch back to development branch
checkout(branch = "development")

