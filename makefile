all:
	stow --verbose --target=$$HOME --restow */

setup:
	brew update ; brew install \
		neovim \
		stow \
		lazygit \
		powerlevel10k \
		bat \
		rg \
		eza \

delete:
	stow --verbose --target=$$HOME --delete */
