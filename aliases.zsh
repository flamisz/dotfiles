# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -ahlF --color --group-directories-first"
weather() { curl -4 wttr.in/${1:-wellington} }
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias zbundle="antibody bundle < $DOTFILES/zsh_plugins.txt > $DOTFILES/zsh_plugins.sh"
alias jigsaw="./vendor/bin/jigsaw"

pdftotextz() {
    local file_path="$1"
    pdftotext "$file_path" -f 1 -l 1 - | pbcopy
}
alias pdftt='pdftotextz'


# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/dev/sites"

# Laravel
alias art="php artisan"
alias ams="php artisan migrate:fresh --seed"
alias at="php artisan test"
alias atf="php artisan test --filter"
alias atp="php artisan test --parallel"

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"
alias up="git pull --rebase"
