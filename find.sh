#!/bin/bash

echo "Enter the folder or file name you are looking for: "
read -r search_name

# Use find command to search for matching folders or files
search_result=$(sudo find / -path "/run" -prune -o -type d -o -type f -name "$search_name" -print 2>/dev/null)

if [ -z "$search_result" ]; then
  echo "No matching folder or file found."
else
  num_results=$(echo "$search_result" | wc -l)
  echo "$num_results matching result(s) found:"
  echo "$search_result"
  echo "Enter the number corresponding to the desired location (or 'q' to quit): "
  read -r choice
  
  if [[ $choice == q ]]; then
    echo "Exiting."
  elif ! [[ $choice =~ ^[0-9]+$ ]]; then
    echo "Invalid choice. Exiting."
  elif [ "$choice" -lt 1 ] || [ "$choice" -gt "$num_results" ]; then
    echo "Invalid choice. Exiting."
  else
    selected_result=$(echo "$search_result" | sed -n "${choice}p")
    cd "$(dirname "$selected_result")"
    exec bash
  fi
fi
