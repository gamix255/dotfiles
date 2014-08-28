#!/bin/sh

echo "This is dotfile renewal script."
echo "rm -Rf $HOME/dotfiles/ && git clone "
echo "Are you ok?"
echo -n "[yes/no] : "

read answer

case $answer in
	yes)
		echo "Dotfiles now renewal."
		cd 
		rm -R dotfiles
		git clone https://github.com/gamix255/dotfiles.git
		;;
	no)
		echo "Nothing to do."
		;;
	*)
		echo "Nothing to do."
		;;
esac

