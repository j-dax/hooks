#!/bin/bash
# To enable this hook, rename this file to "pre-commit".

if git rev-parse --verify HEAD >/dev/null 2>&1
then
	against=HEAD
else
	# Initial commit: diff against an empty tree object
	against=$(git hash-object -t tree /dev/null)
fi

filebyteslimit=$(git config --type=int hooks.filebyteslimit)

# Redirect output to stderr.
exec 1>&2

file_size_check {
	new_commits = `git rev-list #{$oldrev}..#{$newrev}`.split("\n")
	echo $new_commits
}
file_size_check
