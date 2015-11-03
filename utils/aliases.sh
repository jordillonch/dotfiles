# Dev
alias xdebug_disable='mv /usr/local/etc/php/5.6/conf.d/ext-xdebug.ini /usr/local/etc/php/5.6/conf.d/ext-xdebug.ini.bak'
alias xdebug_enable='mv /usr/local/etc/php/5.6/conf.d/ext-xdebug.ini.bak /usr/local/etc/php/5.6/conf.d/ext-xdebug.ini'
alias osiris_tests='xdebug_disable; cat tests.parallel | time parallel --gnu -j0; php vendor/bin/behat --format=progress; php vendor/bin/behat -p background --format=progress --tags=process; xdebug_enable'
alias horus_tests='xdebug_disable; cat tests.parallel | time parallel --gnu -j0; php vendor/bin/behat --format=progress; xdebug_enable'
alias removecache='rm -rf ./applications/*/app/cache/*'

# Alias of Alias
alias editaliases='vim ~/.dotfiles/utils/aliases.sh'
alias cataliases='cat ~/.dotfiles/utils/aliases.sh'
alias reloadaliases='source ~/.dotfiles/utils/aliases.sh'

# Git
alias git='hub'
alias gc='git commit'
alias gd='git diff --color'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset %C(yellow)%d%Creset %an: %s - %Creset %Cgreen(%cr, %cd)%Creset" --abbrev-commit --date=iso'
alias gs='git status -sb'
alias gf='git fetch --all -p'

# Server
alias edithosts='sudo vim /etc/hosts'

# Php
alias phpunit='./vendor/bin/phpunit --colors'
alias pf='./vendor/bin/phpunit --filter'
alias pb='./vendor/bin/phpunit --exclude=integration,external'
alias pi='./vendor/bin/phpunit --group=integration,external'
alias behat='./vendor/bin/behat'
alias bf='./vendor/bin/behat --tags=~skip -p'

# Ip's
alias public_ip="curl -s checkip.dyndns.org|sed -e 's/.*Current IP Address: //' -e 's/<.*\$//'"

# Utils
alias reveal='open .'
alias count_files_recursive='find . -type f -print | wc -l'
alias watch_number_of_files='watch -n1 "find . -type f -print | wc -l"'
alias size_of_the_current_directory='du -ch | grep total'
alias YOLO='sudo find . -exec chmod 777 {} \;'
alias get_last_executed_command='echo $history[1]'
alias fuck!='sudo $history[1]'
alias stt='subl .'
function diff_between
    comm -23 <(sort $2) <(sort $1)
end
alias normalize_permissions='chmod 775'
alias copy_ssh_key='xclip -sel clip < ~/.ssh/id_rsa.pub'
function uuid_to_db
    set uuid (echo $argv | tr '[:lower:]' '[:upper:]' | sed 's/\-//g')
    echo -n $uuid | pbcopy
    echo $uuid
end
function uuid_db
    set uuid (uuidgen | sed 's/\-//g')
    echo -n $uuid | pbcopy
    echo $uuid
end
function uuid_code
    set uuid (uuidgen | tr '[:upper:]' '[:lower:]')
    echo -n $uuid | pbcopy
    echo $uuid
end
