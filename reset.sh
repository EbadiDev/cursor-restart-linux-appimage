#!/bin/bash

# Check if script is run as root
if [ "$EUID" -ne 0 ]; then 
    echo "Please run as root (use sudo)"
    exit 1
fi

echo "Starting Cursor reset process..."

# Kill any running Cursor processes
echo "Stopping Cursor processes..."
pkill -f "Cursor"

# Clean up Cursor directories
echo "Cleaning up Cursor directories..."

# Clean up common Cursor locations
CURSOR_DIRS=(
    "$HOME/.config/Cursor"
    "$HOME/.cursor"
    "$HOME/.cache/Cursor"
    "$HOME/.local/share/Cursor"
)

for dir in "${CURSOR_DIRS[@]}"; do
    if [ -d "$dir" ]; then
        echo "Removing $dir"
        rm -rf "$dir"
    fi
done

echo "Cursor reset completed successfully!"
echo "You can now restart Cursor." 