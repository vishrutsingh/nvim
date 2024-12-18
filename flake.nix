{
  description = "Nix Flake for LazyVim configuration from vishrutsingh/nvim";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    nvim-config.url = "github:vishrutsingh/nvim";
  };

  outputs = { self, nixpkgs, nvim-config }: {
    devShells = rec {
      # For Linux (x86_64 and aarch64)
      linux = nixpkgs.lib.mkShell {
        buildInputs = [
          nixpkgs.neovim
          nixpkgs.git
          nixpkgs.fzf
          nixpkgs.ripgrep
        ];

        shellHook = ''
          CONFIG_PATH="$HOME/.config/nvim"
          if [ ! -d "$CONFIG_PATH" ]; then
            echo "Cloning Neovim configuration from GitHub..."
            git clone ${nvim-config} $CONFIG_PATH
          else
            echo "Updating Neovim configuration..."
            git -C $CONFIG_PATH pull
          fi

          # Ensure Lua config directories are set up for plugin and custom configurations
          PLUGIN_CONFIG_DIR="$CONFIG_PATH/lua/plugin"
          CUSTOM_CONFIG_DIR="$CONFIG_PATH/lua/custom"

          # Ensure that lua/plugin and lua/custom are in place for LazyVim
          if [ ! -d "$PLUGIN_CONFIG_DIR" ]; then
            echo "Creating plugin config directory: $PLUGIN_CONFIG_DIR"
            mkdir -p $PLUGIN_CONFIG_DIR
          fi

          if [ ! -d "$CUSTOM_CONFIG_DIR" ]; then
            echo "Creating custom config directory: $CUSTOM_CONFIG_DIR"
            mkdir -p $CUSTOM_CONFIG_DIR
          fi

          echo "Neovim configuration is ready with LazyVim setup."
        '';
      };

      # For macOS (darwin)
      darwin = nixpkgs.lib.mkShell {
        buildInputs = [
          nixpkgs.neovim
          nixpkgs.git
          nixpkgs.fzf
          nixpkgs.ripgrep
        ];

        shellHook = ''
          CONFIG_PATH="$HOME/.config/nvim"
          if [ ! -d "$CONFIG_PATH" ]; then
            echo "Cloning Neovim configuration from GitHub..."
            git clone ${nvim-config} $CONFIG_PATH
          else
            echo "Updating Neovim configuration..."
            git -C $CONFIG_PATH pull
          fi

          # Ensure Lua config directories are set up for plugin and custom configurations
          PLUGIN_CONFIG_DIR="$CONFIG_PATH/lua/plugin"
          CUSTOM_CONFIG_DIR="$CONFIG_PATH/lua/custom"

          # Ensure that lua/plugin and lua/custom are in place for LazyVim
          if [ ! -d "$PLUGIN_CONFIG_DIR" ]; then
            echo "Creating plugin config directory: $PLUGIN_CONFIG_DIR"
            mkdir -p $PLUGIN_CONFIG_DIR
          fi

          if [ ! -d "$CUSTOM_CONFIG_DIR" ]; then
            echo "Creating custom config directory: $CUSTOM_CONFIG_DIR"
            mkdir -p $CUSTOM_CONFIG_DIR
          fi

          echo "Neovim configuration is ready with LazyVim setup."
        '';
      };

      # For WSL (Windows Subsystem for Linux)
      wsl = nixpkgs.lib.mkShell {
        buildInputs = [
          nixpkgs.neovim
          nixpkgs.git
          nixpkgs.fzf
          nixpkgs.ripgrep
        ];

        shellHook = ''
          CONFIG_PATH="$HOME/.config/nvim"
          if [ ! -d "$CONFIG_PATH" ]; then
            echo "Cloning Neovim configuration from GitHub..."
            git clone ${nvim-config} $CONFIG_PATH
          else
            echo "Updating Neovim configuration..."
            git -C $CONFIG_PATH pull
          fi

          # Ensure Lua config directories are set up for plugin and custom configurations
          PLUGIN_CONFIG_DIR="$CONFIG_PATH/lua/plugin"
          CUSTOM_CONFIG_DIR="$CONFIG_PATH/lua/custom"

          # Ensure that lua/plugin and lua/custom are in place for LazyVim
          if [ ! -d "$PLUGIN_CONFIG_DIR" ]; then
            echo "Creating plugin config directory: $PLUGIN_CONFIG_DIR"
            mkdir -p $PLUGIN_CONFIG_DIR
          fi

          if [ ! -d "$CUSTOM_CONFIG_DIR" ]; then
            echo "Creating custom config directory: $CUSTOM_CONFIG_DIR"
            mkdir -p $CUSTOM_CONFIG_DIR
          fi

          echo "Neovim configuration is ready with LazyVim setup."
        '';
      };
    };
  };
}
