# Cursor Reset for Linux AppImage

A simple utility to reset the Cursor editor AppImage on Linux systems.

## One-Click Installation

```bash
curl -o /tmp/reset.sh https://raw.githubusercontent.com/EbadiDev/cursor-restart-linux-appimage/main/linux/bash.sh && chmod +x /tmp/bash.sh && sudo /tmp/bash.sh
```

## What does this do?

This script performs the following actions:
1. Stops any running Cursor processes
2. Cleans up Cursor's temporary files and cache
3. Resets Cursor to its initial state

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

## Contributing

Feel free to open issues or submit pull requests if you have any improvements or suggestions.

## License

MIT License

## Author

[EbadiDev](https://github.com/EbadiDev)
