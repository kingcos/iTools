# EZconfigs - Mac

## zsh

```.zshrc
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# --- kingcos configs ---

# Flutter
export PATH="$PATH:/Users/kingcos/Developer/flutter/bin"

# Proxy
alias goprx='export http_proxy=http://127.0.0.1:1087 https_proxy=http://127.0.0.1:1087'
alias unprx='unset http_proxy https_proxy'

# thefuck
eval $(thefuck --alias)
```

## fish

```config.fish
# --- kingcos configs ---

# Flutter
set PATH /Users/kingcos/Developer/flutter/bin $PATH

# Anaconda
set PATH /anaconda3/bin $PATH
source /anaconda3/etc/fish/conf.d/conda.fish

# Socks Proxy
function proxy
  export http_proxy=http://127.0.0.1:1087 https_proxy=http://127.0.0.1:1087
end

function unproxy
  set --erase http_proxy
  set --erase https_proxy
end

# thefuck
thefuck --alias | source
```