# Bash File Counter

A simple Bash script to count the number of files in a given directory. The script distinguishes between normal files and hidden files, providing detailed counts for each.

## Features

- Counts **normal files** (non-hidden) in the specified directory.
- Counts **hidden files** (those starting with a dot `.`).
- Provides clear and user-friendly messages for input validation and results.
- Handles edge cases such as invalid paths, empty input, and empty directories.

## Requirements

- Bash (default on most Unix-based systems).
- Permissions to access the specified directory.

## Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/Darshan-KC/Bash-File-Counter.git
   cd Bash-File-Counter
   ```

2. Make the script executable:
   ```bash
   chmod +x file_counter.sh
   ```

3. Run the script:
   ```bash
   ./file_counter.sh
   ```

4. Follow the prompt to enter the directory path:
   ```bash
   Enter the path to count files (e.g., /root/etc): /path/to/directory
   ```

5. The script will display the count of normal and hidden files:
   ```bash
   The folder contains:
   - 5 normal files
   - 2 hidden files
   ```

## Example Output

### Valid Directory
```bash
Enter the path to count files (e.g., /root/etc): /home/user/Documents
Folder exists.
The folder contains:
- 10 normal files
- 3 hidden files
```

### Invalid Directory
```bash
Enter the path to count files (e.g., /root/etc): /invalid/path
Error: Folder doesn't exist. Please check the path and try again.
```

### Empty Directory
```bash
Enter the path to count files (e.g., /root/etc): /home/user/EmptyFolder
Folder exists.
The folder contains:
- 0 normal files
- 0 hidden files
The folder is empty.
```

## Customization

- **Include Specific File Types**:
  Modify the script to count only certain file types, e.g., `.txt` files:
  ```bash
  normal_count=$(find "$path" -maxdepth 1 -type f -name "*.txt" | wc -l)
  ```

- **Include Subdirectories**:
  Remove the `-maxdepth 1` option in the `find` commands to include all files recursively.

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests to improve the script.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

