#!/bin/bash

# Array of meaningful commit messages
commit_messages=(
  "Implement login screen UI"
  "Add user authentication logic"
  "Create chat message component"
  "Implement user registration functionality"
  "Integrate Firebase for real-time chat"
  "Style chat bubble component"
  "Implement chat room screen"
  "Add user profile management"
  "Refactor authentication flow"
  "Implement push notifications"
  "Update dependencies"
  "Improve error handling"
  "Optimize chat message rendering"
  "Implement typing indicator"
  "Add message timestamp"
  "Integrate image sharing feature"
  "Implement chat search functionality"
  "Style user profile screen"
  "Add emoji support"
  "Implement chat history pagination"
  "Integrate voice message recording"
  "Update UI color scheme"
  "Improve accessibility"
  "Implement chat backup and restore"
  "Add support for file sharing"
  "Implement user status indicators"
  "Integrate analytics"
  "Fix UI bugs"
  "Implement dark mode"
  "Update documentation"
)

commit_count=0

# Git add and commit loop
while [ $commit_count -lt 30 ]
do
  # Git add all changes
  git add .

  # Git commit with a meaningful message
  git commit -m "${commit_messages[$commit_count]}"

  echo "Commit $((commit_count+1)) out of 30 created."

  commit_count=$((commit_count+1))

  # If we reached the end of the commit_messages array, start over
  if [ $commit_count -eq ${#commit_messages[@]} ]
  then
    commit_count=0
  fi
done
