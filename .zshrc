# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#
#
# Setup bindings for both smkx and rmkx key variants
# (fixes key issues in kitty terminal)
#
#

# Home
bindkey '\e[H'  beginning-of-line
bindkey '\eOH'  beginning-of-line
# End
bindkey '\e[F'  end-of-line
bindkey '\eOF'  end-of-line
# Up
#bindkey '\e[A' up-line-or-beginning-search
#bindkey '\eOA' up-line-or-beginning-search
# Down
#bindkey '\e[B' down-line-or-beginning-search
#bindkey '\eOB' down-line-or-beginning-search
# Left
bindkey '\e[D' backward-char
bindkey '\eOD' backward-char
# Right
bindkey '\e[C' forward-char
bindkey '\eOC' forward-char
# Delete
bindkey '\e[3~' delete-char
# Backspace
bindkey '\e?' backward-delete-char
# PageUp
bindkey '\e[5~' up-line-or-history
# PageDown
bindkey '\e[6~' down-line-or-history
# Ctrl+Left
bindkey '\e[1;5D' backward-word
# Ctrl+Right
bindkey '\e[1;5C' forward-word
# Shift+Tab
bindkey '\e[Z' reverse-menu-complete

export TERMINAL=kitty
export PATH="$HOME/.cargo/bin:$PATH"
