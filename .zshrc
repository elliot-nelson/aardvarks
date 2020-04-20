# pure
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
export PURE_CMD_MAX_EXEC_TIME=2
prompt pure
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# rc
source ~/.corerc
source ~/.extrarc
