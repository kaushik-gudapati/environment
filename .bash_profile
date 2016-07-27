parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

source ~/.bash_aliases
export PS1="\[\033[32m\]\w - \$(parse_git_branch)\[\033[00m\] $ "
export LANG='en_US.UTF-8'
export LC_COLLATE='en_US.UTF-8'

##
# Your previous /Users/raghav/.bash_profile file was backed up as /Users/raghav/.bash_profile.macports-saved_2014-10-01_at_18:30:58
##

# MacPorts Installer addition on 2014-10-01_at_18:30:58: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export PATH=/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/mysql/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

test -r /sw/bin/init.sh && . /sw/bin/init.sh
export PATH="/usr/local/bin:$PATH"
