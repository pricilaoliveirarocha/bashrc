cd ~/Desktop

export NICKNAME="Pri"

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

# ================== BOAS-VINDAS ====================== #
# ASCII + Saudação com data
echo -e "\e[33m
  ____       _        
 |  _ \ _ __(_|
 | |_) | '__| | 
 |  __/| |  | | 
 |_|   |_|  |_| 
 
\e[0m"

echo -e "\e[36mOlá, $NICKNAME! Hoje é $(date '+%A, %d de %B de %Y')\e[0m"
echo -e "\e[32mTenha um ótimo terminal! 🚀\e[0m\n"
