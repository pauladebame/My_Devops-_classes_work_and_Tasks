#!/bin/bash

# ----------------------
# STRICT MODE
# ----------------------
set -euo pipefail

# Enable debugging
set -x

# ----------------------
# REDIRECTION EXAMPLES
# ----------------------

# stdout → output.log
echo "This is standard output" > output.log

# stderr → errors.log (intentional error)
ls nonexistent_file 2> errors.log

# ----------------------
# PIPELINE EXAMPLE
# ----------------------

# Count number of .sh files
ls *.sh 2>/dev/null | grep ".sh" | wc -l > output.log

# ----------------------
# TRAP (cleanup on exit)
# ----------------------
cleanup() {
    echo "Cleaning up temporary files..."
    rm -f temp.txt
}

trap cleanup EXIT

# ----------------------
# CREATE TEMP FILE
# ----------------------
touch temp.txt
echo "Temporary data" >> temp.txt

# ----------------------
# INTENTIONAL ERROR
# ----------------------
echo "Now causing an error..."
cat missing_file.txt   # this will fail due to set -e

echo "This line will NOT run"

