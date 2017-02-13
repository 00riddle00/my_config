# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/riddle/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Turn off Touchpad 
# synclient TouchpadOff=1

# Vi everything
set -o vi


# bash
alias b='bash'
alias s='sudo'
alias let='s chmod 777'
alias letr='s chmod -R 777'
alias ls='ls --color=auto'
alias lsr='ls -R'
alias lf='lsblk -f'
alias lsa='ls -a'
alias lsl='ls -l'
alias lsla='ls -al'
alias lsal='ls -al'
alias lc='ls | cat'
alias cpr='s cp -r'
alias rmr='s rm -r'
alias mvr='s mv -r'
alias grepi='grep -i'
alias pag='ps aux | grepi'
alias c='clear'
alias kil='sudo kill -9'
alias more='less'
alias clock='s date +%T -s'
alias tar='tar -xvf'
alias q='exit'
alias re='reboot'
alias off='poweroff'

# make cmd aliases
# TODO check if not already exists 
# TODO add cmd to change exist. alias
function ma() { echo alias $1="'$2'" >> ~/.bashrc; bash; }

function de() { sudo udisks --unmount /dev/$1; }

function op() { nohup $1 & disown;}

# combine cd & ls
function cdd() { cd $1; ls;}

# find command in history
function his() { history | grep $1; }



# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias root='cd /'

alias di='cd /home/riddle/VirtualBox\ VMs/dienynas/app'
alias sca='cd /home/riddle/VirtualBox\ VMs/scard-api/'
alias gri='cd /home/riddle/VirtualBox\ VMs/grigiskes-api/app'
alias u2='cd /home/riddle/CS/2_semester/programavimas_c/code/U2'
alias dw='cd /home/riddle/Downloads/'
alias srv='cd /srv/http/'
alias del='cd ~/deluge'
alias h='history'

# pacman
alias pacs='sudo pacman -S' 
alias pacu='sudo pacman -U'
alias pacr='sudo pacman -R'
alias pacrs='sudo pacman -Rs'
alias up='sudo pacman -Syu'
alias mps='makepkg -s'
alias mp='makepkg'
alias y='yaourt'
alias what='sudo pacman -Qs'
alias pld='sudo pacman -Q'
alias pl='sudo pacman -Qe'

# openbox
alias openbox='exec openbox-session'
alias reop='openbox --reconfigure'
alias wall='feh --bg-scale'
alias start='vim ~/.config/openbox/autostart.sh'
alias rc='sudo vim ~/.config/openbox/rc.xml'
alias menu='sudo vim ~/.config/openbox/menu.xml'
alias out='sudo openbox --exit'

# config
alias vr='vim ~/.vimrc'
alias br='vv ~/.bashrc'
alias termc='vv .config/terminator/config'
alias mkinit='sudo mkinitcpio -p linux'
alias mkgrub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# programs
alias x='startx'
alias vbox='virtualbox'
alias read='acroread'
alias fox='firefox'
alias v='vim'
alias vv='sudo vim'
alias tt='dolphin4 ./'
alias rtt='sudo dolphin4 ./'
alias play='vlc'
alias t='thunar'
alias ag='autokey-gtk'

# git
alias gd='git diff'
alias gl='git log'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias ga='git add'
alias gr='git rm'
alias gb='git branch'
alias gch='git checkout'

# vagrant 
alias vu='vagrant up'
alias vs='vagrant ssh'

# vagrant grigeo
alias runs='python manage.py runserver 0.0.0.0:8000'
alias gri='cd /vagrant/grigiskes-api/app/'
alias venv='source ../env/bin/activate'
alias senv='source ../scard-env/bin/activate'

# vagrant dienynas
alias di='cd /vagrant/dienynas/app/'
alias sca='cd /vagrant/scard-api/'
alias runsg='python manage.py global runserver 0.0.0.0:8000'
alias runsa='python manage.py admin runserver 0.0.0.0:8000'
alias runst='python manage.py teacher runserver 0.0.0.0:8000'

# programs & actions
alias cfr='fortune -c | cowthink -f $(find /usr/share/cows -type f | shuf -n 1)'
alias cf='fortune | cowsay' 

# databases
alias post='sudo systemctl start postgresql'
alias pg='sudo -u postgres psql postgres'
alias mysqlon='sudo systemctl start mysqld'
alias mysqlr='mysql -u root -p'
alias mysqlri='mysql -u riddle -p'
alias apache='sudo systemctl start httpd.service'
alias reapache='systemctl restart httpd'

# inet
alias net='sudo systemctl start dhcpcd@enp9s0.service'
alias wn='sudo netctl start home'
#alias wr='sudo netctl start Riddle00'
alias wr='sudo netctl start modem'
alias wifi='sudo wifi-menu -o'
alias wifion='sudo ip link set wlp8s0 up'
alias wifiof='sudo ip link set wlp8s0 down'
alias pp='ping -c 3 www.google.com'

# touchpad
alias ton='synclient TouchpadOff=0'
alias tof='synclient TouchpadOff=1'

# screen setup
alias xport='xrandr --output HDMI1 --auto --rotate left --output eDP-1 --auto --right-of HDMI-1'
alias xland='xrandr --output HDMI1 --auto --rotate normal --output eDP1 --auto --right-of HDMI1'
alias xexof='xrandr --output HDMI1 --off'
alias xexon='xrandr --output HDMI1 --auto'
alias xof='xrandr --output eDP1 --off'
alias xon='xrandr --output eDP1 --auto'


# c lang
alias t='./test'
alias ms='make rebuild'
#alias ms='make test'
alias vt='vlt ./test'
alias vl='valgrind'
alias vlt='valgrind --track-origins=yes --leak-check=full'
alias vll='vlt --leak-check=full --show-leak-kinds=all ./test'
alias vllv='vlt --leak-check=full --show-leak-kinds=all -v ./test'

# python
alias condaenv='source /opt/anaconda/bin/activate /opt/anaconda/'

# django
alias cs='python manage.py collectstatic --noinput'
alias venv='source ../env/bin/activate'
alias senv='source env/bin/activate'
alias qenv='deactivate'
alias runs='python manage.py runserver'


############################################################################
############################################################################

alias pu='s pip uninstall'
alias mim='vv /home/riddle/.config/mimeapps.list'
alias glg='git lg'
alias ads='cd /home/riddle/CS/2_semester/ads'
alias gpo='git push origin tomo_pakeitimai'

alias tmp='cd ~/tmp1'
alias tmp1='tmp'
alias tmp2='cd ~/tmp2'
alias tmp3='cd ~/tmp3'
alias te='v tests.py'
alias doker='sudo systemctl start docker.service'
alias dok='cd ~/docker'


alias reb='make rebuild'
alias exe='./main.exe'
alias cl='cd /home/riddle/c_lang/LCTHW'
alias ya='yaourt --noconfirm'


alias no='killall mpg123'

alias matrix='~/.riddle-sh-scripts/matrixon.sh'
alias reality='~/.riddle-sh-scripts/matrixof.sh'

alias r='ranger'
alias vf='vifm'

alias xconf='cd /home/riddle/.config/xfce4/xfconf/xfce-perchannel-xml'

alias genkeys='cpr tmp1/keys2.xml .config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml && cpr tmp1/keys2.xml /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml'

alias xout='xfce4-session-logout'
alias pmp='python manage.py'

alias cki='conky -c .conky/stats && conky -c .conky/conkyrc_HUD && conky -c .conky/archconky'
alias ckil='killall conky'

#ubuntu
alias smartgit="/usr/share/smartgit/bin/smartgit.sh"
alias update="sudo apt-get update"
alias whatip="curl http://icanhazip.com"
alias xampp="sudo python /opt/lampp/share/xampp-control-panel/xampp-control-panel.py"
alias lamp="cd /opt/lampp/htdocs"
alias apt="sudo apt-get install"
alias uwifi="wicd-gtk"
alias serv="cd /var/www"
alias ureapache="sudo systemctl restart apache2"

# new
alias vrc='vim ~/.vimrc'
alias ww='python ~/welcome.py'
alias hi='mpg123 ~/ca | cowthink -f $(find /usr/share/cows -type f | shuf -n 1)'

# openbox
alias tint='vv ~/.config/tint2/tint2rc'
alias stopit='killall mpg123'
alias kil='sudo kill -9'
alias term='vim ~/.config/terminator/config'

# general
alias xfce='exec xfce4-session'

alias xl='xrandr --output VGA-0 --rotate left'
alias xn='xrandr --output VGA-0 --rotate normal' 


alias aptr='sudo apt-get remove'
alias dp='sudo dpkg -i'
#alias up='sudo apt-get update'
alias upg='sudo apt-get upgrade'

alias mchef='/home/riddle/programs/mongochef-4.0.4-linux-x64-dist/bin/mongochef.sh'
alias lock='gnome-screensaver-command -l'

alias au='ps aux | grep -i'
alias pic='scrot -s /home/riddle/Screenshots/screenshot-%F-%H%M%S.png'

alias mig='pmp makemigrations && pmp migrate'

alias home='xrandr --output HDMI-1 --auto --output eDP-1 --auto --right-of HDMI-1'

alias tm='conky -c .conky/archconky &'

alias sub='/usr/bin/subl'

alias sca='cd ~/VirtualBox\ VMs/scard-api'
alias libre='libreoffice'
alias tmp3='cd ~/tmp3/'
alias show='mirage'
alias yaup='yaourt -Syu --aur --noconfirm'

alias scard='cd ~/osos/scard/'

alias um='sudo umount /dev/sdb1'
alias fl='sudo fdisk -l'

alias main='cd ~/main'

alias vi='cd ~/VirtualBox\ VMs/'
alias viu='cd ~/VirtualBox\ VMs/ && vu'
alias vis='cd ~/VirtualBox\ VMs/ && vs'

alias ek='xrandr --output VGA-1 --auto --output eDP-1  --auto left-of VGA-0 --output HDMI-1 --auto --left '

alias auk='/home/riddle/.riddle-shell-scripts/autokey.sh'


alias ne='netctl'

alias il='setxkbmap -option grp:setxkbmap -option grp:alt_shift_toggle us,lt,il'
alias gg='google-chrome-stable'
alias con='vv ~/.config/terminator/config'
alias tmp4='cd ~/tmp4'
alias ur='urxvt'
alias mk='./make_zip.sh paysera_test'
alias tb='tail -n 10 ~/.bashrc'
alias orphans='pacman -Qdt'
alias orphans2='pacman -Qdtd'

alias von='s ipsec start && s ipsec up JIRA && s ipsec up MBS'
alias vof='s ipsec down MBS && s ipsec down JIRA'
alias bt='tail -n 20 ~/.bashrc'


alias lsd='lxc-ls -f'

alias op='cd ~/.config/openbox'
alias pro='cd ~/programs'

alias ap='ansible-playbook'
alias app='ansible-playbook centos.yml'
alias ssid='eval $(ssh-agent -s)'

alias wpa='wpa_supplicant -Dnl80211 -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant.conf'
alias rew='ifdown wlan0 && ifup wlan0'
alias ree='ifdown eth0 && ifup eth0'
alias renet=' service networking restart && /etc/init.d/networking restart'
alias zr='vv ~/.zshrc'
alias z='zsh'
alias dot='cd ~/.riddle-dotfiles'
alias she='cd ~/.riddle-shell-scripts'
alias aut='cd ~/.riddle-automation'
alias w='whoami'
alias xi='vv ~/.xinitrc'
