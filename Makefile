XCODE_VERSION = $(shell xcode-select --version)

setup: create-dir install-deps install-libs install-tools brew-install

install-deps:
		@echo $(XCODE_VERSION)
		curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | zsh

install-libs:
		brew bundle --file=./brew/Brewfile
		python3 -m pip install psutil

install-tools:
		git clone https://github.com/aristocratos/bashtop.git /usr/local/lib/bashtop ; cd /usr/local/lib/bashtop ; sudo make install
		curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh

create-dir:
		mkdir -p ~/vars
		mkdir -p ~/Google-Drive

brew-freeze:
		rm ./brew/Brewfile ; brew bundle dump --file=./brew/Brewfile

brew-install:
		brew update
		brew upgrade
		brew bundle --file=./brew/Brewfile
