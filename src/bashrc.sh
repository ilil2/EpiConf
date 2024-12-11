echo "Personnalisation du bashrc"

read -r -p "Voulez vous un PS1 personnalisé ? (y/n)" answer
if [ "$answer" = "y" ]; then
    read -r -p "Quel type ? (1/2/3)" answer
    if [ "$answer" = "1" ]; then
        sed -i "" ~/afs/.confs/bashrc
    elif [ "$answer" = "2" ]; then
        sed -i "" ~/afs/.confs/bashrc
    elif [ "$answer" = "3" ]; then
        echo "git_branch() {" >> ~/afs/.confs/bashrc
	    echo "  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)" >> ~/afs/.confs/bashrc
	    echo '  if [ -n "$branch" ]; then' >> ~/afs/.confs/bashrc
		echo "      changes=$(git status --porcelain 2>/dev/null | wc -l)" >> ~/afs/.confs/bashrc
		echo '      echo -e "\e[0;31mgit:(\e[0;33m$branch\e[0;31m)±$changes"' >> ~/afs/.confs/bashrc
	    echo "  fi" >> ~/afs/.confs/bashrc
        echo "}" >> ~/afs/.confs/bashrc
        echo "PS1='\[\e[1;32m\]┌──(\[\e[1;34m\]\u@\h\[\e[1;32m\])-[\[\e[1;37m\]\W\[\e[1;32m\]] $(git_branch)\n\[\e[1;32m\]└─\[\e[00m\]\$ '" >> ~/afs/.confs/bashrc
    fi
fi

source ~/afs/.confs/bashrc
echo "bashrc personnalisé"