#!/bin/bash

# List all directories in the current directory
echo "Available folders:"
folders=()
i=0
for dir in */; do
    # Remove trailing slash for display
    folder_name="${dir%/}"
    echo "$i) $folder_name"
    folders+=("$folder_name")
    ((i++))
done

# Prompt the user to select a folder
read -p "Please select a folder by number: " choice

# Validate the input
if [[ "$choice" =~ ^[0-9]+$ ]] && [ "$choice" -lt "$i" ]; then
    selected_folder="${folders[$choice]}"
    echo "You selected: $selected_folder"
else
    echo "Invalid selection. Please run the script again."
    exit 1
fi

# Assign the selected folder to a variable
selected_folder="${folders[$choice]}"

cd "$selected_folder" || { echo "Failed to change directory to $selected_folder"; exit 1; }

# fetch and pull from main
git fetch
git pull

echo "Changed to directory: $(pwd)"

# List all files in the selected directory
echo "Available files in $pwd:"
files=()
j=0
for file in *; do
    if [ -f "$file" ]; then
        echo "$j) $file"
        files+=("$file")
        ((j++))
    fi
done

# Check if there are any files to select
if [ ${#files[@]} -eq 0 ]; then
    echo "No files found in the directory."
    exit 1
fi

# Prompt the user to select a file
read -p "Please select a file by number: " file_choice

# Validate the input
if [[ "$file_choice" =~ ^[0-9]+$ ]] && [ "$file_choice" -lt "$j" ]; then
    selected_file="${files[$file_choice]}"
    echo "You selected: $selected_file"
else
    echo "Invalid selection. Please run the script again."
    exit 1
fi

# Open the selected file in nano
nano "$selected_file"

# Set a default commit message
default_commit_message="chore: update env"
read -p "Enter commit message (default: '$default_commit_message'): " commit_message

# Use the default message if the user didn't enter anything
commit_message=${commit_message:-$default_commit_message}

# Run git commands
git add "$selected_file"
git commit -m "$commit_message"
git push

echo "Changes have been committed and pushed to the repository."