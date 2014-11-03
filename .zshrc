#source /apollo/env/envImprovement/var/zshrc
PROMPT="%{$fg[white]%}%m:%~$ "
alias bb=/apollo/env/SDETools/bin/brazil-build
alias br=/apollo/env/SDETools/bin/brazil-runtime-exec

export PATH=/apollo/env/SCCATools/bin:$PATH:/apollo/env/SDETools/bin:/apollo/env/envImprovement/bin:/home/tooned/bin:/apollo/env/EMLTools/bin
export TERMINFO=/apollo/env/envImprovement/var/terminfo
export ORACLE_HOME=/opt/app/oracle/product/10.2.0.2/client
#export LD_LIBRARY_PATH=/opt/app/oracle/product/10.2.0.2/client/lib
export APPEND_CR_URL=1 #appends change request link to commit messages
export EDITOR=vim

alias dvirt4='oql scca_ddl/`/home/stbeach/bin/scca_virt_password.rb`@dw4 @/home/stbeach/scripts/conf.sql'
alias dvirt6='oql scca_ddl/`/home/stbeach/bin/scca_virt_password.rb`@dw6 @/home/stbeach/scripts/conf.sql'
alias dvirt7='oql scca_ddl/`/home/stbeach/bin/scca_virt_password.rb`@dw7 @/home/stbeach/scripts/conf.sql'

alias ddl4='oql scope_ddl/`/apollo/env/SCOPETools/bin/sandbox_password.rb`@dw4 @/home/stbeach/scripts/conf.sql'
alias ddl6='oql scope_ddl/`/apollo/env/SCOPETools/bin/sandbox_password.rb`@dw6 @/home/stbeach/scripts/conf.sql'
alias ddl7='oql scope_ddl/`/apollo/env/SCOPETools/bin/sandbox_password.rb`@dw7 @/home/stbeach/scripts/conf.sql'

alias get_inv='/scope-production/bin/get_inv'
alias ll='ls -lh --color=tty'
alias make='make -j10'

export MARKPATH=$HOME/.marks
function jump { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark { 
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
    rm -i "$MARKPATH/$1"
}
function marks {
    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}
