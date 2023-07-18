alias ls='ls --group-directories-first --color'
alias la='ls -a'
alias ll='ls -lh'
alias gitl='git log -3'

# alias cat='lolcat -t -p 30 -F 0.01'

# alias vcore='workon weenat-back-core'
# alias bastionvpn='sudo openvpn --config /etc/openvpn/client/oriane.ovpn'
# alias mashp='pipenv run python /home/ria/weenat-back/core/manage.py shell_plus --quiet-load'
# alias mars='pipenv run python /home/ria/weenat-back/core/manage.py runserver'
# alias lint='pipenv run black --diff --color . && pipenv run isort --diff --color .'

function grepr { grep -rI "$1" . | cut -c 3-; }
export -f grepr

function gr {
    grep -rI \
        --exclude-dir={data,htmlcov,__pycache__,static,.git,.pytest_cache} \
        "$1" . \
    | cut -c 3-;
}
export -f gr
