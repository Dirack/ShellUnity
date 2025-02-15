#!/bin/bash
#
# Generate current release message based on active develop branch name

set -xv

CURRENTVERSION=$(cat $(dirname $0)/../../docs/VERSION.md)
LATESTVERSION=$(git tag | sort -r | tr '\n' ' ' | cut -d" " -f2)

git describe --abbrev=0
GITLOG=$(git log "...$LATESTVERSION" --oneline)
set +xv
echo "$CURRENTVERSION - [Summary]"
echo ""
echo "[Description]"
echo ""

echo "## Added"
echo "$(echo "$GITLOG" | grep -E "\[(feat|test)\]" | sed 's/^/- /')"
echo ""

echo "## Changed"
echo "$(echo "$GITLOG" | grep -E "\[(perf|docs)\]" | sed 's/^/- /')"
echo ""

echo "## Fixed"
echo "$(echo "$GITLOG" | grep -E "\[(fix)\]" | sed 's/^/- /')"
echo ""

echo "## Removed"
echo "$(echo "$GITLOG" | grep -E "\[(revert)\]" | sed 's/^/- /')"
echo ""

echo "## Development"
echo "$(echo "$GITLOG" | grep -E "\[(build|chore|refactor|style)\]" | sed 's/^/- /')"
echo ""

