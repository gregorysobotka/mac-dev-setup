

XCODE_VERSION = $(shell xcode-select --version)

IMPORT_PATH=${CUSTOM_IMPORT_PATH}

BREW_CASK_FILE="${IMPORT_PATH}/brew/brew-cask-installs.txt"
BREW_INSTALL_FILE="${IMPORT_PATH}/brew/brew-installs.txt"

setup:
		@echo ${IMPORT_PATH}
		@echo $(XCODE_VERSION)
		curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | zsh
		./brew/brew-cask-installs.sh
		./brew/brew-installs.sh
save:

update:
