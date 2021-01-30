###
# This script installs a bunch of symlinks for config files in the home directory.
###

echo "Changing to the ~/dev/dotfiles directory"
cd $HOME/dev/dotfiles
echo "...done"

echo "--- Home directory config files ---"
files="zshrc gitconfig tmux.conf"
for file in ${files}; do
	echo "Creating symlink to $file in home dir"
	ln -sf $HOME/dev/dotfiles/config/${file} $HOME/.${file}
done

echo "--- NVIM ---"
files="init.vim plugins.vim settings.vim"
for file in ${files}; do
	echo "Creating symlink to $file in config/nvim dir"
	ln -sf $HOME/dev/dotfiles/nvim/${file} $HOME/.config/nvim/${file}
done


