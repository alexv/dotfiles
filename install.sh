###
# This script installs a bunch of symlinks for config files in the home directory.
###

echo "Changing to the ~/dotfiles directory"
cd $HOME/dotfiles
echo "...done"

echo "--- Home directory config files ---"
# list of files to symlink
files="bashrc bash_aliases vimrc tmux.conf"
# create symlinks so that they can be dynamically updates in git repo
for file in ${files}; do
	echo "Creating symlink to $file in home dir"
	ln -sf $HOME/dotfiles/home/${file} $HOME/.${file}
done

echo "--- Vundle ---"
if [ -d $HOME/.vim/bundle/Vundle.vim ]; 
then
	echo "Vundle already installed"
else
	echo "Installing Vundle"
	git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
fi

