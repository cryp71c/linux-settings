# Linux Settings

This repository contains my personal configuration files and settings for my Linux system.

## Contents

- **.bashrc_adds**: Additional configurations to be appended to the `.bashrc` file.
- **nvim/**: Custom Neovim settings, including:
  - Custom syntax highlighter for my notes (.ntf)
  - Configuration settings like folds and F5 visual block to prettify JSON

## Installation

To use these settings on your own machine, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/cryp71c/linux-settings.git
    cd linux-settings
    ```

2. Backup your existing `.bashrc` configuration file:
    ```bash
    cp ~/.bashrc ~/.bashrc_backup
    ```

3. Append the additional `.bashrc` configurations:

- The PS1 line is replaced in the .bashrc file with the PS1 line in the bashrc_adds.
- The LS_COLORS variable can be appended to the end of the .bashrc

4. Source the modified `.bashrc` file to apply changes:
    ```bash
    source ~/.bashrc
    ```

## Neovim Configuration

To use the custom Neovim settings:

1. Backup your existing Neovim configuration:
    ```bash
    mv ~/.config/nvim ~/.config/nvim_backup
    ```

2. Copy the `nvim` directory to your Neovim configuration path:
    ```bash
    cp -r nvim ~/.config/
    ```
