#!/bin/bash
#
# Generate current release message based on active develop branch name

CURRENTVERSION=$(git tag | sort -r | tr '\n' ' ' | cut -d" " -f1)

LATESTVERSION=$(git tag | sort -r | tr '\n' ' ' | cut -d" " -f2)

GITLOG=$(git log "...$LATESTVERSION" --oneline)

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

