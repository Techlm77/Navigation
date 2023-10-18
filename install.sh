#!/bin/bash

# Check if .bashrc exists
if [ -f "$HOME/.bashrc" ]; then
    cat >> "$HOME/.bashrc" << "EOF"
nav() {
    local result
    read -p "Enter the file or folder name: " search_term
    IFS=$'\n' result=($(find / -name "$search_term" 2>/dev/null))

    if [ ${#result[@]} -eq 0 ]; then
        echo "File or folder not found."
        return
    fi

    echo "Found locations:"
    
    for i in "${!result[@]}"; do
        printf "[%2d] %s\n" "$i" "${result[i]}"
    done

    read -p "Enter the number of the location you want to navigate to, or 'q' to quit: " choice

    if [[ "$choice" =~ ^[0-9]+$ ]] && [ "$choice" -ge 0 ] && [ "$choice" -lt ${#result[@]} ]; then
        cd "$(dirname "${result[choice]}")"
        echo "You are now in: $(pwd)"
    elif [ "$choice" == "q" ]; then
        echo "Navigation aborted."
    else
        echo "Invalid choice. Please enter a valid number or 'q' to quit."
    fi
}
EOF
    echo "Added 'nav' function to .bashrc"
fi

# Check if .zshrc exists
if [ -f "$HOME/.zshrc" ]; then
    cat >> "$HOME/.zshrc" << "EOF"
nav() {
    local result
    echo -n "Enter the file or folder name: "
    read search_term
    result=("${(@f)$(find / -name "$search_term" 2>/dev/null)}")

    if [ ${#result} -eq 0 ]; then
        echo "File or folder not found."
        return
    fi

    echo "Found locations:"
    
    for i in {1..${#result}}; do
        printf "[%2d] %s\n" "$i" "${result[i]}"
    done

    echo -n "Enter the number of the location you want to navigate to, or press Ctrl+C to cancel: "
    read choice

    if [[ "$choice" =~ ^[0-9]+$ ]] && [ "$choice" -ge 1 ] && [ "$choice" -le ${#result} ]; then
        cd "$(dirname "${result[choice]}")"
        echo "You are now in: $(pwd)"
    elif [ "$choice" == "q" ]; then
        echo "Navigation aborted."
    else
        echo "Invalid choice. Please enter a valid number or press Ctrl+C to cancel."
    fi
}
EOF
    echo "Added 'nav' function to .zshrc"
fi
