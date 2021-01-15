# If you come from bash you might have to change your $PATH.

# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# export GITHUB_AUTH="GITHUB_AUTH"
# export FE_NEXUS_NPM_TOKEN="FE_NEXUS_NPM_TOKEN"

# Path to your oh-my-zsh installation.
export ZSH="/Users/simon/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# ENV
export PATH=~/bin:$PATH
export EDITOR='code'
export BUNDLER_EDITOR='code'
export HISTCONTROL=erasedups

export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=79000000

alias code=code-insiders

alias git=hub
alias reload='. ~/.zshrc'
alias dotfiles='cd ~/bin/dotfiles && code .'

# Projects
alias repos='cd ~/repositories'
alias codemods='cd ~/repositories/react-codemod'
alias chingu='cd ~/repositories/chingu-slack-clone'
alias kkf='cd ~/repositories/realtime-order-app'

alias clone='repos && git clone $1'

# Foreach
alias foreach='cd ~/repositories/foreach'
alias mme='cd ~/repositories/foreach/mmev2'
alias mme:fe='cd ~/repositories/foreach/mmev2/mme/src/main/frontend'
alias cama='cd ~/Repositories/foreach/camashop'
alias cama:fe='cd ~/Repositories/foreach/camashop/camashop/src/main/design'
alias investor='cd ~/Repositories/foreach/investor'
alias investor:fe='cd ~/Repositories/foreach/investor/investor-application/src/main/frontend'
alias code:mme='mme && code .'
alias gutenberg='cd ~/repositories/jarrku/gutenberg'

alias clone:foreach='foreach && git clone $1'

# React codemods
alias codemod:class='jscodeshift -t ~/repositories/react-codemod/transforms/class.js --mixin-module-name=react-addons-pure-render-mixin --pure-component=true --remove-runtime-proptypes=false'
alias codemod:class:flow='jscodeshift -t ~/repositories/react-codemod/transforms/class.js --mixin-module-name=react-addons-pure-render-mixin --flow=true --pure-component=true --remove-runtime-proptypes=false'
alias codemod:unsafe='jscodeshift -t ~/repositories/react-codemod/transforms/rename-unsafe-lifecycles.js'
alias codemod:proptypes='jscodeshift -t ~/repositories/react-codemod/transforms/React-PropTypes-to-prop-types.js --extensions js,jsx'

# General
alias l='ls -lah'
alias c='clear'
alias o='open .'
alias t='touch $1'

# GIT
alias pr:bug='hub pull-request --labels="bug" --base="develop" --edit'
alias pr:chore='hub pull-request --labels="chore" --base="develop" --edit'
alias pr:feature='hub pull-request --labels="feature" --base="develop" --edit'

alias dr:bug='hub pull-request --labels="bug" --base="develop" --edit --draft'
alias dr:chore='hub pull-request --labels="chore" --base="develop" --edit --draft'
alias dr:feature='hub pull-request --labels="feature" --base="develop" --edit --draft'

alias gb='git branch'
alias gl='git log'
alias glo='git log --oneline'
alias gc='git checkout'
alias gca='git commit -v -a'
alias gcam='git commit --amend'
alias gd='git diff'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gpu='git push'
alias gst='git status'
alias gss='git stash save'
alias gsa='git stash apply'
alias gsp='git stash pop'
alias gsl='git stash list'
alias gr='git reset head~1'
alias grc='git rebase --continue'
alias gri='git rebase --interactive'

alias mstart='sudo mongod --dbpath /data/db'

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"