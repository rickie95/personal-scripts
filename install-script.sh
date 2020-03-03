REPO="https://github.com/rickie95/personal-scripts"

is_exec(){
    type "$1" > /dev/null 2>&1
}

if is_exec "git"; then
    git $REPO ~/.personal-scripts
    cp "~/.personal-scripts/dotfiles/.zshrc" ~
else
    echo "Git is not available, check if it's installed"
fi