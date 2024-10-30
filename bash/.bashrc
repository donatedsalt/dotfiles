# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
export OSH='/home/donatedsalt/.oh-my-bash'

# Theme.
# OSH_THEME="powerbash10k"

# Ignore themes you don't like when OSH_THEME is set to "random"
# OMB_THEME_RANDOM_IGNORED=("powerbash10k" "wanelo")

# Uncomment to use case-sensitive completion.
# OMB_CASE_SENSITIVE="true"

# Uncomment to use hyphen-insensitive completion. Case-sensitive completion
# must be off. _ and - will be interchangeable.
# OMB_HYPHEN_SENSITIVE="false"

# Uncomment to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment if you don't want the repository to be considered dirty
# if there are untracked files.
# SCM_GIT_DISABLE_UNTRACKED_DIRTY="true"

# Uncomment if you want to completely ignore the presence
# of untracked files in the repository.
# SCM_GIT_IGNORE_UNTRACKED="true"

# Uncomment if you want to change the command execution time
# stamp shown in the history command output.  One of the following values can
# be used to specify the timestamp format.
# * 'mm/dd/yyyy'     # mm/dd/yyyy + time
# * 'dd.mm.yyyy'     # dd.mm.yyyy + time
# * 'yyyy-mm-dd'     # yyyy-mm-dd + time
# * '[mm/dd/yyyy]'   # [mm/dd/yyyy] + [time] with colors
# * '[dd.mm.yyyy]'   # [dd.mm.yyyy] + [time] with colors
# * '[yyyy-mm-dd]'   # [yyyy-mm-dd] + [time] with colors
# If not set, the default value is 'yyyy-mm-dd'.
# HIST_STAMPS='yyyy-mm-dd'

# Hostory file size
HISTFILESIZE=10000

# Uncomment if you do not want OMB to overwrite the existing
# aliases by the default OMB aliases defined in lib/*.sh
# OMB_DEFAULT_ALIASES="check"

# To use another custom folder than $OSH/custom
# OSH_CUSTOM=/path/to/new-custom-folder

# To disable the uses of "sudo" by oh-my-bash, please set "false".
# The default behavior for the empty value is "true".
OMB_USE_SUDO=false

# To enable/disable display of Python virtualenv and condaenv
# OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable
# OMB_PROMPT_SHOW_PYTHON_VENV=false # disable

# Completions.
completions=(
  git
)

# Aliases.
aliases=(
  general
)

# Plugins.
plugins=(
  bashmarks
)

source "$OSH"/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
export EDITOR='nvim'
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Custom Aliases
alias bashconfig='nvim ~/.bashrc'
alias ohmybash='cd ~/.oh-my-bash/ && nvim'
alias zshconfig='nvim ~/.zshrc'
alias ohmyzsh='cd ~/.oh-my-zsh/ && nivm'
alias hyprconfig='cd ~/.config/hypr/ && nvim'
alias nvimconfig='cd ~/.config/nvim/ && nvim'
alias vm='nvim'
alias vi='nvim'
alias cd='z'
alias ex='yazi'
alias lg='lazygit'
alias fk='fuck'
alias pacman-update-mirror='reflector --latest 5 --sort rate --save /etc/pacman.d/mirrorlist'

# Zoxide init.
eval "$(zoxide init bash)"

# Starship init.
eval "$(starship init bash)"

# Thefuck init.
eval $(thefuck --alias)

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# chromium exec
export CHROME_EXECUTABLE="chromium"

# composer
export PATH=~/.config/composer/vendor/bin:$PATH
