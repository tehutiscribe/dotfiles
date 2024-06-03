all:
	stow --verbose --target=$$HOME --restow */

setup:
	brew update ; brew install \
		neovim \
		stow \
		lazygit \
		powerlevel10k

delete:
	stow --verbose --target=$$HOME --delete */
