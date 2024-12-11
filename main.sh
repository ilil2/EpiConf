read -r -p "Personnalisation du bashrc ? (y/n)" answer
if [ "$answer" = "y" ]; then
    curl | sh
fi