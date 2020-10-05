

XCODE_VERSION = $(shell xcode-select --version)

IMPORT_PATH=${CUSTOM_IMPORT_PATH}

setup:
		@echo ${IMPORT_PATH}
		@echo $(XCODE_VERSION)
		curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | zsh
		brew bundle --file=./brew/Brewfile
		python3 -m pip install psutil
		git clone https://github.com/aristocratos/bashtop.git /usr/local/lib/bashtop ; cd /usr/local/lib/bashtop ; sudo make install

freeze:
		rm ./brew/Brewfile ; brew bundle dump --file=./brew/Brewfile

update:
		brew update
		brew upgrade
		brew bundle --file=./brew/Brewfile
