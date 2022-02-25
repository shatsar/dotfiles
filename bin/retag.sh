#!/bin/sh
set -e

#\n

#10031  git push --delete origin  2.10.0-hello
#10032  git tag 2.10.0-hello\n
#10033  git push origin  2.10.0-hello\n

usage () {
	echo "Retagger:";
	echo "Usage: retag.sh tag_name";
}

# Deletes and recreates a git tag both on local and remote repositories
retag () {
	tag_name="$1"
	echo "Retagging the current directory with tag $tag_name"
	git tag -d  $tag_name
	git push --delete origin $tag_name
	git tag $tag_name
	echo "When you are ready, push with:"
	echo "git push origin $tag_name"
}

main () {
	retag "$1"
}

if [  "$1" ]
then
	retag $1
else
	usage
	exit 1
fi
