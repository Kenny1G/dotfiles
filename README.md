# dotfiles
# TODO for future Kenny
- For Bash
  - edit .profile to source bashrc
- For ZSH
  - Ensure user is named kennyosele
  - Install zsh
  - Install oh my zsh 
    - $ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  - Install powerlevel9k or 10k
    - git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
    - git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
 - edit .name_yaself to set TOASTER(git server) WSL or FREEBIE(freebsd)
 - Install tmux
 - Install stow
 - go to dotfiles directory
  - stow every folder there except cascadia
  - for cascadia replace the file, you know how ;)

## VIM 
- vim version 8.2 preferred
  - https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source
- install plugged
  - curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
- run :PlugInstall 
- install nvm 
  - curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh
  - zsh && nvm install node

