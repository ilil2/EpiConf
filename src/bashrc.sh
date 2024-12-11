echo "Personnalisation du bashrc"

read -r -p "Voulez vous un PS1 personnalisé ? (y/n)" answer
if [ "$answer" = "y" ]; then
    read -r -p "Quel type ? (1/2/3)" answer
    if [ "$answer" = "1" ]; then
        sed -i "" ~/afs/.confs/bashrc
    elif [ "$answer" = "2" ]; then
        sed -i "" ~/afs/.confs/bashrc
    elif [ "$answer" = "3" ]; then
        sed -i "s/PS1='.*'/PS1='\[\e[1;32m\]┌──(\[\e[1;34m\]\u@\h\[\e[1;32m\])-[\[\e[1;37m\]\W\[\e[1;32m\]] $(git_branch)\n\[\e[1;32m\]└─\[\e[00m\]\$ '/g" ~/afs/.confs/bashrc
    fi
fi

source ~/afs/.confs/bashrc
echo "bashrc personnalisé"