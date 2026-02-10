#!/bin/sh

# Check arguments
if [ $# -ne 2 ]; then
    echo "Error: writer.sh requires two arguments"
    exit 1
fi

writefile="$1"
writestr="$2"

# Create directory path if needed
mkdir -p "$(dirname "$writefile")" || {
    echo "Error: could not create directory"
    exit 1
}

# Write string to file (overwrite)
echo "$writestr" > "$writefile" || {
    echo "Error: could not write to file"
    exit 1
}
