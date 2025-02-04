# Cursor Reset for Linux AppImage

A simple utility to reset the Cursor editor AppImage on Linux systems.

## One-Click Installation

```bash
curl -o /tmp/bash.sh https://raw.githubusercontent.com/EbadiDev/cursor-restart-linux-appimage/main/linux/bash.sh && chmod +x /tmp/bash.sh && sudo /tmp/bash.sh
```

## What does this do?

This script performs the following actions:

1. Checks for root privileges and required dependencies (python3, uuidgen, dmidecode)
2. Waits for any running Cursor processes to close
3. Creates backup of your original system UUID
4. Generates new unique identifiers:
   - Machine ID
   - Mac Machine ID
   - Device ID
   - SQM ID
5. Sets up a custom environment:
   - Creates a fake dmidecode command
   - Updates PATH configuration in your shell
6. Modifies Cursor configuration:
   - Updates storage.json with new telemetry IDs
   - Extracts and modifies the Cursor AppImage
   - Repacks the AppImage with modifications
7. Handles file permissions and ownership
8. Provides detailed output of all changes made

The script is designed to help reset Cursor's identity on your system while maintaining a backup of original settings. It modifies the necessary files to ensure Cursor starts fresh while preserving your system's integrity.

### Technical Details

- Creates backups in `~/IOPlatformUUID_Backups`
- Sets up fake commands in `~/fake-commands`
- Modifies the AppImage in `/opt/cursor-bin`
- Updates shell configuration (`.zshrc`, `.bashrc`, or `.profile`)
- Preserves file permissions and ownership

## Manual Installation

1. Clone the repository:
```bash
git clone git@github.com:EbadiDev/cursor-restart-linux-appimage.git
```

2. Make the script executable:
```bash
chmod +x bash.sh
```

3. Run the script:
```bash
sudo ./bash.sh
```

## Requirements

- Linux operating system
- curl (for one-click installation)
- sudo privileges
- python3
- uuidgen
- dmidecode
- appimagetool (for repacking the AppImage)

## Contributing

Feel free to open issues or submit pull requests if you have any improvements or suggestions.

## License

MIT License

## Author

[EbadiDev](https://github.com/EbadiDev)