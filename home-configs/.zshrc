
export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
  export ZSH=/home/dobbie/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="hyperzsh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
#-----------------------------
# Alias
#-----------------------------
alias pacman="pacman --color auto"
alias ls="ls --color"
alias weather="curl http://wttr.in/napier"
alias clock="tty-clock -c"
alias matrix="cmatrix"
alias starwars="telnet towel.blinkenlights.nl"
alias pipes="pipes"
alias mpdn="ncmpcpp -S visualizer"
#alias syua="pacaur -Syu"
#alias syu="sudo pacman -Syu"
alias merge="xrdb -merge ~/.Xresources"
#alias ssh="ssh -p 6666 dobbie03@69.164.210.120"
alias neo="neofetch"
alias lol= "screenfetch | lolcat -F 0.2  -a -s 10"0
alias neoa="neofetch --ascii"
alias neob="neofetch --backend off"
alias play="ncmpcpp -S visualizer"
alias font="sudo fc-cache -f -v"
alias tui="s-tui"
alias ana="systemd-analyze"
alias anab="systemd-analyze blame"
alias upmirrors="sudo reflector --score 100 --fastest 25 --sort rate --save /etc/pacman.d/mirrorlist --verbose"
alias backup="sh ~/Documents/dotii"
alias scr="./.scr"
alias res="openbox --restart"
alias rec="openbox --reconfigure"
#alias orp="sudo pacman -Rns $(pacman -Qtdq)"
alias tutor="vimtutor"

## PACMAN
alias update='sudo pacman -Syyu'
alias install='sudo pacman -S'
alias search='pacman -Ss'
alias remove='sudo pacman -Rns'
alias clean='sudo pacman -Scc'
alias orphan='sudo pacman -Rs $(pacman -Qtdq)'
alias stayonmypc='sudo pacman -D --asexp'
alias fuckoff='sudo pacman -D --asdep'
alias pacinf='pacman -Si'
alias searchlocal='pacman -Qs'
alias listfiles='pacman -Ql'
alias whoisorphan='pacman -Qdt'
alias upmirrors='sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup; sudo reflector -l 5 --sort rate --save /etc/pacman.d/mirrorlist'
alias paclog='tail -f /var/log/pacman.log'
alias pacul='sudo rm /var/lib/pacman/db.lck'

## YAOURT
alias yorphan='yaourt -Qtd'
alias aurin='yaourt -S'
alias aurse='yaourt -Ss'
alias aurup='yaourt -Syua'
alias aurupnc='yaourt -Syua --noconfirm'
alias aurinen='LC_ALL=C yaourt -S'
alias Y='yaourt --noconfirm'
alias aurinf='yaourt -Si'

#neofetch --backend off
ufetch
echo "[3m$(fortune -sa)\n" # display a random short quote at start
#./.al.sh
if [[ $TERM != "xterm-termite" ]] || [[ $TERM != "rxvt-256color" ]]; then export TERM="xterm-256color"; fi

PATH="/home/dobbie/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/dobbie/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/dobbie/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/dobbie/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/dobbie/perl5"; export PERL_MM_OPT;


setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS


# ls after cd.. no-op in dir with more than 40 items to list
cdls() { cd "$@"; [ ${#$(ls)} -le 40 ] && ls --group-directories-first || :; }

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi



export IN_API_KEY="83df5985124c4352ae11447b349270f7"