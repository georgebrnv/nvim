# My Neovim Configuration

Personal Neovim config based on NvChad v2.5 with full Python development setup.

## Quick Installation

### Prerequisites
- Neovim >= 0.9.0
- Git
- Node.js >= 16.x
- Python >= 3.8

### Setup (Fresh Install)

1. **Backup existing config:**
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

2. **Clone this config:**
   ```bash
   git clone https://github.com/georgebrnv/nvim.git ~/.config/nvim
   ```

3. **Start Neovim and wait for plugins to install:**
   ```bash
   nvim
   ```
   Wait for Lazy to automatically install plugins on first launch.

4. **Sync plugins and install LSP servers:**
   ```vim
   :Lazy sync
   :MasonInstallAll
   ```
   Restart Neovim after this completes.

## Features

- **Python**: LSP (Pyright), formatting (Black/Ruff), type checking (mypy), debugging (DAP)
- **Debugging**: Full DAP support with UI
- **File navigation**: Telescope fuzzy finder
- **Git integration**: Built-in git support

## Key Bindings

- Leader: `<Space>`
- Find files: `<leader>ff` 
- Live grep: `<leader>fw`
- File tree: `<leader>e`
- Debugging prefix: `<leader>d`
  - `<leader>db` - Toggle breakpoint
  - `<leader>dc` - Continue/Start debugging
  - `<leader>di` - Step into
  - `<leader>do` - Step over
  - `<leader>du` - Toggle DAP UI

## Troubleshooting

Run `:checkhealth` to diagnose issues.
