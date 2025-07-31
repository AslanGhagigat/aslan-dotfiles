# 🚀 Vim and Oh My Zsh Configuration

This repository contains my personal configuration files for **Vim** and **Oh My Zsh**. It's designed to help me quickly set up my preferred development environment on new systems, keep my configurations synced, and provide a reference for others.

---
## 1. Vim Setup
This section guides you through installing Vim-Plug and setting up my Vim configuration.
### 1.1. Prerequisites
Before you start, make sure you have:
- **Vim** (version 8 or higher)
	To test: 
	```bash
	vim --version
	```
- **Git**
	for test:
	```bash
	git --version
	```
### 1.2. Install Vim-Plug
Vim-Plug is a fast and minimalist plugin manager for Vim. Follow these steps to install it:
1. **Close Vim** if it's open.
2. **Open your terminal.**
3. **Run the following command** to download Vim-Plug:
	```Bash
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```
### 1.3. Copy Your `~/.vimrc` File
The `~/.vimrc` file is Vim's main configuration file.
1. **Back up your existing `~/.vimrc`** (if you have one):
    ```Bash
    mv ~/.vimrc ~/.vimrc_backup_$(date +%Y%m%d%H%M%S)
    ```
2. **Copy the `vimrc` file from this repository** to your home directory:
    ```Bash
    cp path/to/your/repo/vimrc ~/.vimrc
    ```
    (Replace `path/to/your/repo` with the actual path to where you've cloned this repository.)
### 1.4. Install Vim Plugins
After copying `~/.vimrc`, you'll need to install the plugins using Vim-Plug:
1. **Open Vim.**
2. **Execute the following command** and press `Enter`:
    ```Vim Script
    :PlugInstall
    ```
    This command will download and install all the plugins listed in your `~/.vimrc`.
3. **After the installation completes, close Vim and reopen it.** All your configurations and plugins should now be active.
---
## 2. Oh My Zsh Setup
This section covers installing Zsh, Oh My Zsh, and applying a custom theme.
### 2.1. Prerequisites
Make sure you have:
- **Git**
- **Zsh**
	To test: 
	```bash
	zsh --version
	```
### 2.2. Install Zsh (if not already installed)
If Zsh isn't on your system:
```Bash
sudo apt update
sudo apt install zsh
```
After installation, set Zsh as your default shell:
```Bash
chsh -s $(which zsh)
```
You'll need to **restart your system** for this change to take effect.
### 2.3. Install Oh My Zsh
Oh My Zsh is an open-source framework for managing your Zsh configuration.
1. **Open your terminal.**
2. **Run the following command:**
    ```Bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```
    This command will install Oh My Zsh and create a new `~/.zshrc` file.
### 2.4. Add and Apply a Custom Theme
To use your custom theme:
1. **Copy your custom theme file to the Oh My Zsh themes directory.**
    - Let's assume your theme file is named `my-custom-theme.zsh-theme` and is located in the `themes/` directory within this repository.
    - **Copy this file to:**
        ```Bash
        cp path/to/your/repo/themes/my-custom-theme.zsh-theme ~/.oh-my-zsh/themes/
        ```
        "If you have cloned this repository, this path would typically be the location of your cloned repository on your system."
2. **Edit your `~/.zshrc` file.**
    ```Bash
    vim ~/.zshrc # Or use any other text editor
    ```
    Find the line that sets `ZSH_THEME`:
```bash
# Before:
ZSH_THEME="robbyrussell" # (or any other default theme)

# After:
ZSH_THEME="aslan" # (use the filename of your theme without the .zsh-theme extension)
```
3. **Save the file and close/reopen your terminal** (or run `source ~/.zshrc`) to apply the new theme.
---
## 3. Repository Structure
For better organization, here's how this repository is structured:
```
Vim and Oh My Zsh Configuration/
├── README.md
├── vimrc              # My Vim configuration file
└── themes/
    └── aslan.zsh-theme
```
