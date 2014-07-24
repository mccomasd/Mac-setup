#!/bin/bash

function setupInstaller {
	echo "Hello, "$USER". What would you like to install?"

	read -p "iTerm 2?          " iterm

	read -p "Google Chrome?    " googleChrome

	read -p "Sublime Text?     " sublimeText

	read -p "Dash?             " dash

	read -p "BetterTouchTool?  " betterTouchTool

	read -p "Dropbox?          " dropbox
}

function installApplications {
	echo "Installing Homebrew."
	ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

	if [[ $iterm =~ ^[Yy]$ ]]
		then echo "Installing iTerm 2."
		brew tap phinze/cask
		phinze=1
		brew install brew-cask
		brewCask=1
		brew cask install iterm2
	else echo -e "Skipping iTerm 2.\n"
	fi

	if [[ $googleChrome =~ ^[Yy]$ ]]
		then echo "Installing Google Chrome."
		if [ $phinze == "1" ]
			then echo ""
		else brew tap phinze/cask
			phinze=1
		fi
		if [ $brewCask == "1" ]
			then echo ""
		else brew install brew-cask
			brewCask=1
		fi
		brew cask install google-chrome
	else echo -e "Skipping Google Chrome.\n"
	fi

	if [[ $sublimeText =~ ^[Yy]$ ]]
		then echo "Installing Sublime Text."
		if [ $phinze == "1" ]
			then echo ""
		else brew tap phinze/cask
			phinze=1
		fi
		if [ $brewCask == "1" ]
			then echo ""
		else brew install brew-cask
			brewCask=1
		fi
		brew cask install sublime-text
	else echo -e "Skipping Sublime Text.\n"
	fi

	if [[ $dash =~ ^[Yy]$ ]]
		then echo "Installing Dash."
		if [ $phinze == "1" ]
			then echo ""
		else brew tap phinze/cask
			phinze=1
		fi
		if [ $brewCask == "1" ]
			then echo ""
		else brew install brew-cask
			brewCask=1
		fi
		brew cask install dash
	else echo -e "Skipping Dash.\n"
	fi
	
	if [[ $betterTouchTool =~ ^[Yy]$ ]]
		then echo "Installing BetterTouchTool."
		if [ $phinze == "1" ]
			then echo ""
		else brew tap phinze/cask
			phinze=1
		fi
		if [ $brewCask == "1" ]
			then echo ""
		else brew install brew-cask
			brewCask=1
		fi
		brew cask install bettertouchtool
	else echo -e "Skipping BetterTouchTool.\n"
	fi

	if [[ $dropbox =~ ^[Yy]$ ]]
		then echo "Installing Dropbox."
		if [ $phinze == "1" ]
			then echo ""
		else brew tap phinze/cask
			phinze=1
		fi
		if [ $brewCask == "1" ]
			then echo ""
		else brew install brew-cask
			brewCask=1
		fi
		brew cask install dropbox
	else echo -e "Skipping Dropbox.\n"
	fi
}

setupInstaller
installApplications

# brew tap phinze/cask
# brew install brew-cask

# iTerm 2 INSTALLATION
# brew cask install iterm2

# GOOGLE CHROME INSTALLATION
# brew cask install google-chrome

# Dash INSTALLATION
# brew cask install dash

# BetterTouchTool INSTALLATION
# brew cask install bettertouchtool

# Dropbox INSTALLATION
# brew cask install dropbox
