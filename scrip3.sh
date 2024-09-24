source_file="$1"
gcc $source_file -o binary_file

if [ $? -eq 0 ]; then
    echo "accept"
    ./binary_file
else
    echo "error"
    vi "$source_file"
fi