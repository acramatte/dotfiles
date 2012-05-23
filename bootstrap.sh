# partly copied from https://github.com/mathiasbynens/dotfiles

#!/bin/bash
cd "$(dirname "$0")"

function doIt() {
	rsync --exclude "old/" --exclude ".git/" --exclude ".gitignore" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" --exclude "dotfile.tmproj" -av . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt

if [ ! -d ~/.vim ]; then
    mkdir -p ~/.vim/backups
    mkdir -p ~/.vim/swaps
fi

echo
read -p "Applying .osx file will kill Mac OS X related programs. Would you like to apply .osx? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    source ~/.osx
fi

echo
echo "Adding [user] section to ~/.gitconfig"
read -p "What is your Git user name? "
USER=$REPLY
read -p "What is your Git email address? "
EMAIL=$REPLY
echo "[user]" >> ~/.gitconfig
echo "    name = $USER" >> ~/.gitconfig
echo "    email = $EMAIL" >> ~/.gitconfig

echo
echo "You have to open a new Terminal to activate the new dotfiles."
