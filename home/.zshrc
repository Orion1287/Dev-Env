export ZSH="$HOME/.oh-my-zsh"

# Set theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git)

# Ensure Zsh custom path is set
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# FZF keybindings (only if installed)
if [[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]]; then
    source /usr/share/doc/fzf/examples/key-bindings.zsh
    source /usr/share/doc/fzf/examples/completion.zsh
fi

# Load personal environment files if they exist
PERSONAL="$HOME/.config/personal"
if [[ -d "$PERSONAL" ]]; then
    for file in $(find -L "$PERSONAL" -type f); do
        source "$file"
    done
fi

# Add custom paths
export PATH="$HOME/.local/bin:$HOME/.deno/bin:$HOME/go/bin:$PATH"

# Custom function to print a single-line file
cat1Line() {
    tr -d "\n" < "$1"
}

# Alias for Neovim
alias vim="nvim"

# Ensure the shell is interactive before running fzf key bindings
if [[ $- == *i* ]]; then
    bindkey -s ^f "tmux-sessionizer\n"
fi

