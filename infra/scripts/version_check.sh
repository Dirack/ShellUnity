#!/bin/bash
#
# Check current version based on active develop branch name

CURRENTVERSION=$(git tag | sort -r | tr '\n' ' ' | cut -d" " -f1)
CURRENTVERSION=${CURRENTVERSION##*v}

echo "CURRENT VERSION: ${CURRENTVERSION}"

if [ -z "$CURRENTVERSION" ]
then
	exit 1
fi

VERSIONDOC=$(cat docs/VERSION.md)

if [ "$VERSIONDOC" == "$CURRENTVERSION" ]; then
	echo "Version checked (VERSION.md file): $VERSIONDOC"
	exit 0
else
	echo "Package version in VERSION.md file does not seem correct!"
	echo "Version from VERSION.md file: $VERSIONDOC"
	exit 1
fi
