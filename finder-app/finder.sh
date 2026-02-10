#!/bin/sh

# Check arguments
if [ $# -ne 2 ]; then
    echo "Error: finder.sh requires two arguments"
    exit 1
fi

filesdir="$1"
searchstr="$2"

# Check directory exists
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a directory"
    exit 1
fi

# Count files (recursive)
file_count=$(find "$filesdir" -type f | wc -l)

# Count matching lines (recursive)
match_count=$(grep -R "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $file_count and the number of matching lines are $match_count"
