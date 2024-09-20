git fetch
git pull

# Set a default commit message
default_commit_message="chore: update env"
read -p "Enter commit message (default: '$default_commit_message'): " commit_message

# Use the default message if the user didn't enter anything
commit_message=${commit_message:-$default_commit_message}

# Run git commands
git add .
git commit -m "$commit_message"
git push
