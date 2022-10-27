# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment
export HISTORY_IGNORE="(ls*|ll|pwd|reboot|shutdown|history|cd*|up|ranger)"
export EDITOR="nvim"
export GIT_EDITOR="nvim"
export PATH=/home/jhaime/.fnm:$PATH

export FZF_ALT_C_COMMAND="find ."
export FZF_CTRL_T_COMMAND="find ."
export FZF_DEFAULT_OPTS=" \
    --preview 'cat{}' \
    --layout=reverse \
    --height 60% \
    --border"

# Nvim LSP JDTLS
export JDTLS_JVM_ARGS="-javaagent:/opt/jdt-language-server/lombok.jar"

export SDKMAN_DIR="$HOME/.sdkman"

# Startup programs
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

eval "`fnm env`"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
