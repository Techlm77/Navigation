# Finder
This script provides a convenient way for users to quickly locate and navigate to specific folders or files on their linux filesystem.

# Shell Script: Find and Navigate to Files or Folders

This shell script provides a simple and efficient way to search for specific files or folders within your Linux filesystem and navigate to the desired location. It allows you to input a search term, such as a file name or folder name, and displays a list of matching results. You can then select the desired location by entering the corresponding number, and the script will automatically change the current directory to that location. This helps streamline the process of finding and accessing files or folders, saving you time and effort in navigating through your filesystem.

# Advanced Version: find.sh Script

The find.sh script is an advanced version of the file and folder search tool. It provides additional features and a more user-friendly interface. With find.sh, you can enter the name of the folder or file you are looking for, and the script will search your Linux filesystem for matching results.

Notable features of find.sh include:

    Interactive selection: If multiple matches are found, find.sh displays a numbered list of results, allowing you to choose the desired location by entering the corresponding number.
    Automatic directory change: Once you select a location, the script automatically changes the current directory to that location, making it convenient to navigate to the desired file or folder.

This enhanced version of the script provides an efficient and streamlined way to locate and access files or folders within your Linux filesystem.

# Simple Version: Search and Change Directory

The simple version of the command allows you to quickly search for a specific folder or file in your Linux filesystem and change the current directory to the location of the matched result.

Here's how it works:

    You will be prompted to enter the name of the folder or file you are looking for.
    The command will search the entire filesystem (excluding the /run directory) for matching results.
    If a match is found, the current directory will be changed to the location of the matched result, allowing you to easily access and work with the desired folder or file.

This simple and straightforward command provides a convenient way to search for and navigate to specific locations within your Linux filesystem without the need for complex search commands or manual directory navigation.

```sh
read -p "Enter the folder or file name you are looking for: " search_name && cd "$(sudo find / -path "/run" -prune -o -type d -name "$search_name" -print -quit)"
```

Be warned the simple version is not perfect and doesn't always work which is why I wrote a complex script (find.sh) for better reliability.
