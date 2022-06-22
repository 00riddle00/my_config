# =============================================
#  NOTE: many of these aliases are not being 
#  used anymore or are being used very rarely, 
#  however, I still keep them there as a sort
#  of command-wiki, since quite a few times
#  it turned out to be pretty useful to look 
#  up some stuff that I aliased a while ago.
#
#  In the future, since the number of aliases
#  is getting big, in order to avoid unexpected 
#  outcomes in the command line and shell 
#  scripts, it would be reasonable not to 
#  source them in .zshrc, but to put in a 
#  separate text file and access using fzf or 
#  smth.
# =============================================

# communication
alias thanks='($BIN/sounds/thanks-hal &) > /dev/null'

# assembler
alias hhh='yasm -fbin hh.asm -o hh.com'
alias yf='yasm -fbin'

# cd
alias d='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias root='cd /'

# dotfiles
alias arp='vim $BIN/archlinux_post_install/packages_main_repos'
alias aur='vim $BIN/archlinux_post_install/packages_aur'
alias dot='cd $DOTFILES'
alias dotm='cd $BIN/manage_dotfiles'
alias ig='vim $DOTFILES/.gitignore'
alias she='cd $BIN'

# emacs
alias ee='vim ~/.emacs.d/init.el'
alias emacs.vanilla='env HOME="$HOME/.dotfiles/.emacs.env.vanilla" emacs'
alias emacs.cmd='emacs -nw' # --no-window-system'
alias emacs.nocaps='setxkbmap -option ctrl:nocaps'

# git
alias com="git add . && git commit -m '.'"
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gch='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git clean'
alias gitlg.firstparent='git log --first-parent'
alias gitlg.nomerges='git log --no-merges --oneline'
alias gl='git log'
alias glg='git lg'
alias gp='key && git push'
alias grc='git rm -r --cached'
alias gs='git status'
alias gu='git restore --staged'
alias clone='git clone'
## alias containing other aliases. 
## try to use those as little as possible
alias push='key && com && gp'

# subversion
alias ss='svn st'
alias sup='svn up'
alias ssa='svn add'
alias svn.diff='svn diff --diff-cmd="meld"'
alias ssd='svn.diff'
alias svn.log='svn log -r 1:HEAD'
alias svn.log.head='svn log -r HEAD:1 --limit 5'

# info output
alias fl='sudo fdisk -l'
alias info.video='lspci | grep -e VGA -e 3D'
alias lf='lsblk -f'
alias ssid='eval $(ssh-agent -s)'

# windows info
alias get.win_class='xprop | grep -i class'
alias get.win_pos_size='xwininfo'

# keys info
alias get.keyname='xev'
## press keys and Enter (`cat` also can be used)
alias get.key_code_1='sed -n l'
alias get.key_code_2='showkey --ascii'

# java
alias j='java'
alias jc='javac'
alias jcl='rm *.class'

# javascript
alias npm.ls='npm list --depth=0'
alias npm.ls.g='npm list -g --depth=0'

# launch console programs
#alias mm='neomutt'
#alias r='ranger'
alias tor='rtorrent'
alias irc='irssi'
alias rss='newsboat'
alias lynx='lynx -cfg=$HOME/.config/lynx/config  -lss=$HOME/.config/lynx/colors'
alias music='ncmpcpp'
#alias sc='sc-im'
alias mux='tmuxinator'
alias espeak='espeak -ven-uk'
alias tigl='lazygit'
## adhering to XDG base dir specs
alias calcurse='calcurse -C "$XDG_CONFIG_HOME"/calcurse -D "$XDG_DATA_HOME"/calcurse'
alias cal='calcurse'
# console programs with options
alias mpv.image='mpv --no-config --pause --vo=tct'
alias mpv.video='mpv --no-config --vo=tct'
alias mpv.youtube='mpv -vo=caca'
alias red.norm='redshift -P -O 6500'
alias red.warm='redshift -P -O 5000'
alias timer='termdown -B | lolcat'

# launch GUI programs
alias fire='firefox'
alias libre='libreoffice'
#alias mi='sxiv'
alias mi='nomacs'
alias play='mpv'
alias sub='/usr/bin/subl3'
alias tint='tint2 & disown'
alias vbox='virtualbox'

# openbox
#alias out='sudo openbox --exit'
alias reop='openbox --reconfigure'
alias wall='feh --bg-scale'

# i3
alias i3.out='i3-msg exit'
alias i3.notes='i3-msg exec "urxvt -name notes -hold -e zsh -c $BIN/vimnotes.sh"'
alias cmus.run='urxvt -name dropdown_aux -e tmux new-session cmus &'
alias cmus.scratch="i3-msg 'exec --no-startup-id urxvt -name dropdown_aux -e tmux new-session cmus\;'"
## avoid tmux session using an old I3SOCK environment variable after i3 restart
## run this instead of `i3-msg` while in tmux
alias i3-msg-tmux='i3-msg --socket "/run/user/1000/i3/$(\ls -t /run/user/1000/i3/ | awk "{print $1}" | grep ipc | head -n 1)"'

# dwm
alias dout='killall xinit'

# run shell scripts
alias autostart='$HOME/.config/openbox/autostart.sh'
alias theme.matrix='$BIN/themes/matrix/run'
alias theme.riddle='$BIN/themes/riddle/run'
alias setx='fix-xkbmap'

# ssh
alias sa='ssh-add'
alias sl='ssh-add -l'

# standard cmds
alias c='clear'
alias cpr='cp -r'
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias grepi='grep -i'
# find string in current dir (recursive) and show matches with filename and line number
alias grep.find='grep -rHn --exclude=histfile'
alias grepi.find='grep -i -rHn --exclude=histfile'
alias h='history'
alias off='sudo poweroff'
alias prego='sudo $(fc -ln -1)'
alias q='exit'
alias re='sudo reboot'
alias rmr='sudo rm -r'  
alias s='sudo'
alias tar='tar -xvf'
## A trailing space in VALUE causes the next word to be checked for alias substitution when the alias is expanded.
alias watch='watch '
alias z='zsh'
alias exe='chmod +x'
alias ce='crontab -e'
alias cl='crontab -l'

# vagrant
alias vs='vagrant ssh'
alias vu='vagrant up'

# various 
alias bloat='lsa | wc -l'
alias mutable='sudo chattr -i'
alias immutable='sudo chattr +i'
alias aminus='amixer set Master 10%-'
alias aplus='amixer set Master 10%+'
alias cf='fortune | cowsay'
alias cfr='fortune -c | cowthink -f $(find /usr/share/cows -type f | shuf -n 1)'
alias cg='acpi'
alias clock.sync='sudo ntpd -qg'
alias dusort.all='du -h --max-depth=1 | sort -h' # including hidden
alias dusort='du -chs * | sort -h'
alias emp='truncate -s 0'
alias memory=' du -s --si'
alias fonts.update='fc-cache -fv'
alias fonts.current='fc-match --verbose Sans'
alias fonts.find='fc-list | grep -i'
alias fonts.match='fc-match'
alias getkey='gpg --keyserver keyserver.ubuntu.com --recv'
# alias getkey='gpg --keyserver hkps://hkps.pool.sks-keyservers.net --recv'
alias getsums='updpkgsums'
alias ggp='gprolog'
alias key='eval $(ssh-agent -s) && ssh-add $HOME/.ssh/cmd_rsa'
alias mkgrub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias mkinit='sudo mkinitcpio -p linux'
alias mute='amixer -q sset Master toggle'
alias nocaps='sudo dumpkeys | sed "s/\s*58\s*=\s*Caps_Lock/ 58 = Control/" | sudo loadkeys'
alias phone.on='jmtpfs ~/phone' # if problems, remount + restart thunar
alias phone.off='umount ~/phone'
alias pic='scrot -s $HOME/Screenshots/screenshot-%F-%H%M%S.png'
alias rl='readlink -f'
alias show_hidden='setopt -s glob_dots'
alias starwars='telnet towel.blinkenlights.nl'
alias tag='ctags -R .'
alias tb='tail -n 20 $ZDOTDIR/aliases.zsh'
alias timezone.update='timedatectl set-timezone "$(curl --fail https://ipapi.co/timezone)"'
alias trackmem.hidden='watch -n 5 "du -h --max-depth=1 | sort -h"'
alias trackmem='watch -n 5 "du -hs * | sort -h"'
alias unrar='unrar x'
alias wl="wc -l"
alias count='wc -l'
alias xminus='light -U 10'
alias xplus='light -A 10'
alias xres.restart='xrdb $HOME/.Xresources'
alias xres.show='xrdb -query -all'
alias yd='youtube-dl'
alias ydn='youtube-dl --no-playlist' 
alias ydna='youtube-dl --no-playlist --extract-audio --audio-format mp3'
alias repicom='killall picom && picom -b'
alias getpos='xwininfo -id $(xdotool getactivewindow)'
alias gpu.which='glxinfo|egrep "OpenGL vendor|OpenGL renderer"'
alias redd='killall dunst && dunst &'
## count different file extensions
alias files.ext="find . -type f | perl -ne 'print $1 if m/\.([^.\/]+)$/' | sort -u"
alias files='find . -type f | wc -l'
# fuser -v {file/socket name(s)} - show info about process, working with the file(s)/socket(s)
alias fuserv='fuser -v'
# fuser -vk {file/socket name(s)} - kill the process working with the file(s)/socket(s)
# ex. usage: fuser -vk *.log
alias fuserk='fuser -vk'

# vim
alias v='vim'
alias vmi='vim'
alias vib='vim -b'
alias vim.bare='vim -u NONE'
alias vv='sudo vim'
alias vim.plugins='vim +PlugInstall +qall'

# tmux
alias retmux='tmux source-file ~/.tmux.conf'
alias tmux.kill='tmux kill-server'

# LaTeX
alias kx='killall xelatex'
alias ka='rm *.aux'

## npBuild
alias main.process='a_minus_b main main.light > main.bloat'
alias aur.process='a_minus_b aur aur.light > aur.bloat'
alias get='curl -LO'

## anaconda
alias condaenv='source /opt/anaconda/bin/activate /opt/anaconda/'

## aur
alias ya='yay'
alias ya.install='yay -S'
alias ya.find='yay -Si'
# alias yaup='yay -Syu --noconfirm'
alias yaup='arch-update'
alias yaup.dontcare="yay -Suy --noconfirm anaconda --overwrite '*'"

### fuzzy-search through the AUR, preview info and install selected packages
alias fzf.yay='yay -Slq | fzf -m --preview 'yay -Si {1}'| xargs -ro yay -S'

## c development
alias gdb.super='gdb --batch --ex run --ex bt --ex q --args'
#alias ms='make rebuild'
alias vl='valgrind'
alias vll='vlt --leak-check=full --show-leak-kinds=all'
alias vllv='vlt --leak-check=full --show-leak-kinds=all -v'
alias vlt='valgrind --track-origins=yes --leak-check=full'
alias vt='valgrind --track-origins=yes'

## clipboard
alias xclip='xclip -selection clipboard'
alias xclip.prim='xclip -selection primary'
alias xclip.sec='xclip -selection secondary'
alias copy='xclip'

## databases
alias mysqlr='mysql -u root -p'
alias mysqlri='mysql -u user -p'
alias pg='sudo -u postgres psql postgres'
alias pgm='psql -d biblio -U togi3017'

## django
#alias cs='python manage.py collectstatic --noinput'
alias mig='pmp makemigrations && pmp migrate'
alias pmp='python manage.py'
alias runs='python manage.py runserver'

## killing stuff
alias no='killall mpg123'

## languages
# choosing 'lt' also resets languages to the usual  'us,lt' combination
alias lt='setxkbmap -option grp:setxkbmap -option grp:alt_shift_toggle us,lt'
alias de='setxkbmap -option grp:setxkbmap -option grp:alt_shift_toggle us,lt,de'
alias he='setxkbmap -option grp:setxkbmap -option grp:alt_shift_toggle us,lt,il'
alias ru="setxkbmap -option grp:setxkbmap -option grp:alt_shift_toggle -layout 'us,lt,ru' -variant ',,phonetic'"
alias tl='translit'

## navigation
alias bak='cd $HOME/backups'
alias bin='cd $HOME/.local/bin'
alias candy='cd $CANDY'
alias conf='cd ~/.config/'
alias drop.bak='cd $HOME/Dropbox/backup'
alias drop.phone='cd $HOME/Dropbox/phone'
alias drop='cd $DROPBOX'
alias dw='cd $HOME/Downloads/'
alias lok='cd $HOME/.local'
alias notes='cd $NOTES'
alias pak='cd $BIN/archlinux_post_install/'
alias pi='cd $HOME/pics'
alias pro='cd $HOME/pro'
alias serv='cd /srv/http'
alias srv='cd /srv/http/'
alias sk='cd ~/Screenshots'
#alias vi='cd $HOME/VirtualBox\ VMs/'
alias zdot='cd $ZDOTDIR'
alias share="cd $DOTSHARE"

alias tmp1='cd $HOME/tmp1'
alias tmp='tmp1'
alias mp='tmp1'
alias mp1='tmp1'

alias tmp2='cd $HOME/tmp2'
alias tmp3='cd $HOME/tmp3'
alias tmp4='cd $HOME/tmp4'
alias tmp5='cd $HOME/tmp5'
alias tmp6='cd $HOME/tmp6'
alias tmp7='cd $HOME/tmp7'
alias tmp8='cd $HOME/tmp8'
alias tmp0=tmp8

alias mp2='tmp2'
alias mp3='tmp3'
alias mp4='tmp4'
alias mp5='tmp5'
alias mp6='tmp6'
alias mp7='tmp7'
alias mp8='tmp8'
alias mp0='tmp8'

## network
alias pp='ping -c 3 www.google.com'
alias p='watch -n 0.5 "ping -c 3 www.google.com"'
alias get.my_ip='curl -w "\n" ifconfig.me'
alias get.local_ip='ip route | head -n 1'
alias get.gateway='ip route | head -n 1'
alias get.net_interface='ip route | head -n 1' # get the current active interface name
alias iii='get.net_interface'
alias check.ip='whois'
alias check.dns='nslookup'
alias check.domain='whois'
alias vpn.on='systemctl start openvpn-client@airvpn.service'
alias vpn.off='systemctl stop openvpn-client@airvpn.service'

## vim into conf files
alias al='vim $ZDOTDIR/aliases.zsh'
alias dun='vim $DOTFILES/.config/dunst/dunstrc'
alias cm='vim ~/.config/picom/picom.conf'
alias fn='vim $ZDOTDIR/functions.zsh'
alias fn.fzf='vim $ZDOTDIR/functions_fzf.zsh'
alias ic='vim $HOME/.config/i3/config'
alias icc='vim $HOME/.config/i3blocks/config'
alias tmuxr='vim $HOME/.tmux.conf '
alias vr='vim $HOME/.vimrc'
alias xi='vim $HOME/.xinitrc'
alias xres='vim $HOME/.Xresources'
alias zenv='vim $HOME/.zshenv'
alias zr='vim $ZDOTDIR/.zshrc'
alias lal='vim $ZDOTDIR/aliases.local.zsh'
alias lfn='vim $ZDOTDIR/functions.local.zsh'
alias rr='vim $DOTFILES/.config/ranger/rc.conf'
alias tg='vim ~/.tigrc'
### openbox specific
alias rc='vim $HOME/.config/openbox/rc.xml'
# alias start='vim $HOME/.config/openbox/autostart.sh'
# alias tintrc='vim $HOME/.config/tint2/tint2rc'

##--------------------------------------------------------------------------------------------------------------------
## pacman
##--------------------------------------------------------------------------------------------------------------------
### -Q
alias orphans='pacman -Qdtd'
alias is='sudo pacman -Qqe | grepi '     # grep for explicitly installed package (package 'is' in the system)
alias isa='sudo pacman -Qq | grepi '     # grep for installed package ('isa' = 'is -a' as in 'ls -a', with 'implicitly installed packages' as 'hidden files')
alias visa='sudo pacman -Q | grepi '     # grep for installed package with version info ('visa' = 'is -a -v')
alias pl='sudo pacman -Qqe'              # list all explicitly installed packages 
alias pld='sudo pacman -Qq'              # list all packages 
alias plm='sudo pacman -Qqm'             # list foreign packages (mainly from AUR)
alias pac.owner='sudo pacman -Qo'        # who owns the file
alias pac.group='sudo pacman -Qgq'       # list installed packages belonging to a group 
                                         # (or list all groups and packages if no argument is passed)
alias pac.group.belongs='sudo pacman -Qgq | grepi' # show which group the package belongs to
alias pac.base-devel='pac.group base-devel' # list packages depending on `base` metapackage
alias pac.what='sudo pacman -Qs'         # list local package(s) with description
alias what='sudo pacman -Qs'   
alias pac.deps='sudo pacman -Qi'         # show deps for the given local package
### -S
alias pacfile='sudo pacman -S --noconfirm - --needed <'       # install from file
alias pacs='sudo pacman -S --noconfirm --needed'              # `needed` does not reinstall targets that are up to date
alias pac.group_remote='sudo pacman -Sgq'                     # list packages belonging to a group
alias pac.base='expac -S '%E' base | xargs -n1 | sort'        # list packages depending on `base` metapackage
alias pac.deps_remote='sudo pacman -Si'                       # show deps for the given package
alias pac.find='sudo pacman -Ss'                              # search package. with <regexp>
# removes uninstalled packages from /var/cache/pacman/pkg and cleans unused
# repos in /var/lib/pacman
alias pac.clear='sudo pacman -Sc'
# removes ALL packages from /var/cache/pacman/pkg and ...
alias pac.clear_all='sudo pacman -Scc'
# fuzzy-search through all available packages, with package info shown in a preview window, and then install selected packages
alias fzf.pac='pacman -Slq | fzf -m --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S'
# -------------------------------------------------------------------------
# updates your pkg databases if the repositories haven’t been checked 
# recently, and upgrades any new package versions.
# -y -> update
# -u -> upgrade
alias up='sudo pacman -Syu'
# forces updates of your databases for all repositories (even if it 
# was just updated recently) and upgrades any new package versions.
alias up1='sudo pacman -Syyu'
#  upgrades packages and also downgrades packages (if you happen to have a
#  newer version than in the repository). Normally this should not be used.
#  Only if you’re trying to fix a specific issue due to a new package being
#  removed from the repository.
alias up2='sudo pacman -Syuu'
# -------------------------------------------------------------------------
### -R
alias freeorphans='sudo pacman -Rs $(pacman -Qdtq)'
alias pacr='sudo pacman -R'
# Avoid using the -d option with pacman. pacman -Rdd package skips dependency checks during package removal. 
# As a result, a package providing a critical dependency could be removed, resulting in a broken system.
alias pac.forcedel='sudo -k pacman -Rdd'
##--------------------------------------------------------------------------------------------------------------------

##--------------------------------------------------------------------------------------------------------------------
## process management
##--------------------------------------------------------------------------------------------------------------------
alias kil='sudo kill -9'

### `ps -e` displays every active process on a Linux system in Unix format
alias ae='ps -e | grep -v grep | grep -i'
###     use `ps c -ef` for a simple name of executable (as well as showing process status)

### '-f' performs a full-format listing
alias aef='ps -ef | grep -m1 ""  && ps -ef | grep -v grep | grep -i'

### another way of listing (shows session id)
alias aes="ps -e -o 'user,pid,pgid,sess,args' | grep -m1 \"\" && ps -e -o 'user,pid,pgid,sess,args' | grep -v grep | grep -i"

### Display all processes in BSD format 
###     'a' option displays the processes belonging to every user
###     'x' option tells ps to show all the processes regardless of 
###         what terminal (if any) they are controlled ('?" in TTY column indicated
###         no controlling terminal)
alias au='ps ax | grep -v grep | grep -i'    
###     use `ps cax` for a simple name of executable (as well as showing process status)

###     'u' option is for user-oriented format
alias aux='ps aux | grep -v grep | grep -i'  

### also show parent pid
alias aup='ps ax l | grep -v grep | grep -i'

## show sleeping processes
alias asleep='ps ax | grep -v grep | grep sleep'
# --------------------------------------------------------------------------------------------------------------------

## python
alias ppp='python'
alias p2='python2'
alias py.exe='python -c'
alias venv.init='python3 -m venv env'
alias venv='source venv/bin/activate'
alias qenv='deactivate'

## perl
alias perl.exe='perl -le'

## haskell
alias gg='ghc -dynamic'
alias ggm='ghc -dynamic --make'
alias ggi='ghci'

## screen setup
alias xof='xrandr --output $LAPTOP_SCREEN --off'
alias xon='xrandr --output $LAPTOP_SCREEN --auto'
alias xl='xrandr --output $HDMI_SCREEN --rotate left'
alias xr='xrandr --output $HDMI_SCREEN --rotate right'
alias xn='xrandr --output $HDMI_SCREEN --rotate normal'
alias xland='xrandr --output $HDMI_SCREEN -s 2560x1440 --auto --rotate normal --output $LAPTOP_SCREEN --auto --right-of $HDMI_SCREEN'
alias xland2='xrandr --output $HDMI_SCREEN --auto --rotate normal --output $LAPTOP_SCREEN --auto --right-of $HDMI_SCREEN'
alias xport='xrandr --output $HDMI_SCREEN --auto --rotate left --output $LAPTOP_SCREEN --auto --right-of $HDMI_SCREEN'
#alias xport='xrandr --output $HDMI_SCREEN -s 1440x2560 --auto --rotate right --output $LAPTOP_SCREEN --auto --right-of $HDMI_SCREEN'

## systemd
#### general
alias systemd.running='systemctl --type=service'
alias systemd.list='systemctl list-unit-files'
alias systemd.enabled='systemctl list-unit-files | grep enabled'
alias systemd.boot='systemd-analyze blame'
alias systemd.boot_total='systemd-analyze time'
#### db
alias mysql.start='sudo systemctl start mysqld'
alias post='systemctl start postgresql'
#### server
alias apache='systemctl start httpd.service'
alias reapache='systemctl restart httpd'
#### lan
alias net='systemctl start dhcpcd@enp9s0.service'
alias renet='systemctl restart dhcpcd@enp9s0.service'
#### wifi
alias wnet='sudo systemctl start dhcpcd@wlp8s0.service'
alias rewnet='sudo systemctl start dhcpcd@wlp8s0.service'
alias essid='iwconfig'
alias wpa='sudo wpa_supplicant -B -i wlp8s0 -c /etc/wpa_supplicant/wpa_supplicant.conf'
alias wpae='sudo wpa_supplicant -B -i wlp8s0 -c /etc/wpa_supplicant/eduroam.conf'
alias wpah='sudo wpa_supplicant -B -i wlp8s0 -c /etc/wpa_supplicant/home.conf'
alias wpa_nadparseta='sudo wpa_supplicant -B -i wlp8s0 -c /etc/wpa_supplicant/nadparseta.conf'
alias wpa_campingplatz='sudo wpa_supplicant -B -i wlp8s0 -c /etc/wpa_supplicant/campingplatz.conf'
alias wpa_rostock='sudo wpa_supplicant -B -i wlp8s0 -c /etc/wpa_supplicant/rostock.conf'
alias wpa_rde='sudo wpa_supplicant -B -i wlp8s0 -c /etc/wpa_supplicant/rde.conf'
alias wpa_sta='sudo wpa_supplicant -B -i wlp8s0 -c /etc/wpa_supplicant/sta.conf'
alias wpas='sudo wpa_supplicant -B -i wlp8s0 -c /etc/wpa_supplicant/sodas.conf'
alias wpac='sudo wpa_supplicant -B -i wlp8s0 -c /etc/wpa_supplicant/comet.conf'
alias wifi.net='sudo wpa_supplicant -B -i wlp8s0 -c /etc/wpa_supplicant/home.conf && systemctl start dhcpcd@wlp8s0'
#alias wifi.comet.net='sudo wpa_supplicant -B -i wlp8s0 -c /etc/wpa_supplicant/comet.conf && systemctl start dhcpcd@wlp8s0'
#alias wifi.sodas.net='sudo wpa_supplicant -B -i wlp8s0 -c /etc/wpa_supplicant/sodas.conf && systemctl start dhcpcd@wlp8s0'
alias wifi.off='sudo ip link set wlp8s0 down'
alias wifi.on='sudo ip link set wlp8s0 up'

## cat
alias cat='bat'

## ls
# alias ls='ls --color=auto'
# alias la='ls -al'
# alias las='ls -al'
# alias lc='ls | cat'
# alias lsa='ls -a'
# alias lsal='ls -al'
# alias lsl='ls -l'
# alias lsla='ls -al'
# alias lsr='ls -R'
# alias ih='ls -la | grep -i'
# alias lsh='ls -ld .?*'
# alias ll='\ls -lL'

## colorls
alias ls='colorls'
alias la='colorls -al'
alias lc='colorls -1'
alias lsa='colorls -a'
alias lsal='colorls -al'
alias lsla='colorls -al'
alias lsl='colorls -l'
alias ih='colorls -la | grep -i'
alias lsh='colorls -ld .?*'
# alias tree='colorls --tree'

### permissions
alias ch='sudo chown -R $USER:$USER'
alias let='chmod 755'
alias letr='chmod -R 755'

### aliases as flags
# usage: command `--use-commit-times`
alias -- --use-commit-times='echo --config-option=config:miscellany:use-commit-times=yes'
alias -- --date='date "+%F"'
alias -- --date='date "+%F"'
alias -- --datetime='date +%F_%H_%M_%S'

# =====================================================================
# temp
# =====================================================================

alias corona='curl https://corona-stats.online/lithuania'
alias corona.global='curl https://corona-stats.online'

alias thesis='cd $HOME/Tomas_Giedraitis/course_work'
alias practice='cd $HOME/Tomas_Giedraitis/practice'
alias tt='cd $HOME/Tomas_Giedraitis'
alias exp='cd $HOME/Tomas_Giedraitis/experiments'
alias bb='cd $HOME/Tomas_Giedraitis/bibliography'

alias ms='make cleanAll && make'
alias shar='cd /home/riddle/Tomas_Giedraitis/discussions/shared_files'
alias data='cd /home/riddle/Tomas_Giedraitis/experiments/cod_melting_points/mp_data'
#alias sc='cd /home/riddle/.local/bin/scripts'

alias cel='cd /home/riddle/Tomas_Giedraitis/experiments/cod_melting_points/mp_data/working_files/grep_codcif/value_with_C_was_changed_to_Kelvin_numeric_value'
alias kel='cd /home/riddle/Tomas_Giedraitis/experiments/cod_melting_points/mp_data/working_files/grep_codcif/value_with_K_was_changed_to_numeric_value'
alias sc='cd /home/riddle/Tomas_Giedraitis/experiments/scripts'
alias in='cd /home/riddle/Tomas_Giedraitis/experiments/cod_melting_points/mp_data/inputs'
alias out='cd /home/riddle/Tomas_Giedraitis/experiments/cod_melting_points/mp_data/outputs'
alias vp='cd /home/riddle/.vim/plugged'
alias fp='cd /home/riddle/Tomas_Giedraitis/experiments/cod_melting_points/weka_ann_classifier/setups/classifiers/melting_points_2_classes'
alias dotvim='cd /home/riddle/.vim'
alias skr='cd /home/riddle/.local/bin/scripts'
#alias r='./formula_mp_to_vector inputs/data.tsv outputs/chem_elements.lst'
alias r='./lab outputs/input_vectors.csv --split 273'
alias res='cd /home/riddle/Tomas_Giedraitis/experiments/cod_melting_points/weka_ann_classifier/results/classifiers/melting_points_2_classes'
alias hh='vim /home/riddle/histfiles/histfile'
alias cs='thesis'
alias pr='practice'
alias cdres='cd /home/riddle/Tomas_Giedraitis/experiments/cod_melting_points/weka_ann_classifier/results/classifiers/melting_points_5_classes'
alias ww='wpa_rde && wnet'
alias neo='neofetch'
# usage: 
#    > hours \\
#    dquote> 18:09
#    dquote> 28:17
#    dquote> "
#    > 0.773889
alias hours="awk -F: '{s += "\$1"/60 + "\$2"/3600} END {print s}' <<<\""
