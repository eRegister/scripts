#!/usr/bin/env bash

gitDir=/development/bahmni_config_release/.git

# checks if something happened on the remote repo
# git --git-dir=$gitDir fetch

# now see if there's anything that happened
git --git-dir=$gitDir diff HEAD remotes/origin/master

# Now get ONLY files that were edited. This will
# help in preserving bandwith

git --git-dir=$gitDir pull origin