# plugins
plugins=(git fzf-tab)

# Path to your oh-my-zsh installation.
export ZSH="/Users/nillsvanlimbeek/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# deno
export DENO_INSTALL="/Users/nillsvanlimbeek/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export PATH="/Users/nillsvanlimbeek/.local/bin/:$PATH"

# nvim
alias vim=nvim
alias nvim-example='NVIM_APPNAME="nvim-example" nvim'
alias nvim-lazy='NVIM_APPNAME="nvim-lazy" nvim'

# starship
eval "$(starship init zsh)" 

# eza -> better ls
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"

# zoxide -> better cd
eval "$(zoxide init zsh)"
alias cd="z"

# fzf
eval "$(fzf --zsh)"

# zsh autocomplete
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pnpm
export PNPM_HOME="/Users/nillsvanlimbeek/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# android and tauri
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
export ANDROID_HOME="/Users/nillsvanlimbeek/Library/Android/sdk"
export NDK_HOME="/Users/nillsvanlimbeek/Library/Android/sdk/ndk/27.0.12077973"
