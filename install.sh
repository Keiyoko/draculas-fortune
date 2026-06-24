#!/usr/bin/env bash

INSTALL_DIR="$HOME/.local/bin"
SCRIPT_URL="https://raw.githubusercontent.com/Keiyoko/draculas-fortune/main/flow"

mkdir -p "$INSTALL_DIR"
curl -fsSL "$SCRIPT_URL" -o "$INSTALL_DIR/flow"
chmod +x "$INSTALL_DIR/flow"

# Add to PATH if not already there
if ! grep -q "$INSTALL_DIR" "$HOME/.bashrc"; then
  echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
fi

echo "Installed! Run 'source ~/.bashrc' or restart your terminal, then type 'flow'."
