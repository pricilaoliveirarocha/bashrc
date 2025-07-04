cd ~/Desktop

# ===================== Estilo ======================= #

PS1='\[\e[32m\]\u\[\e[37m\] at \[\e[33m\]\h\[\e[37m\] \[\e[34m\]\w\[\e[0m\]$(__git_ps1 " \[\e[33m\][%s]")\[\e[0m\] \$ '  # Prompt colorido com branch Git

# ===================== Alias ======================= #

alias gogo='source ~/.bashrc'        # reload no .bashrc
alias ll='ls -alF'                   # lista detalhada       
alias e='exit'                       # sair do shell rápido
alias gs='git status'                # git status
alias gp='git push'                  # git push simples

ga() {                  # git add com parâmetro (arquivo ou pasta)
  git add "$@"
}

gc() {                  # git commit com mensagem passada como parâmetro
  git commit -m "$*"
}

gco() {                 # git checkout para branch passada como parâmetro
  git checkout "$1"
}

gcb() {                 # criar e mudar para branch passada
  git checkout -b "$1"
}
