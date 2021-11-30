# .myConfig_repo
my working .dotConfig_repo based on a bare repo


git init --bare $HOME/.myConfig_repo
alias myConfig='/usr/bin/git --git-dir=$HOME/.myConfig_repo/ --work-tree=$HOME'
myConfig config --local status.showUntrackedFiles no
#copy to .zshrc
alias myConfig='/usr/bin/git --git-dir=$HOME/.myConfig_repo/ --work-tree=$HOME'

# To add a file now use a command like
myConfig add .zshrc
myConfig commit -m "add .zsh"
# to add a the .zsh

# connect the .dotFile with a remote server.
myConfig remote add origin git@github.com:GranitePlayground/.myConfig_repo.git
myConfig branch -M main
myConfig push -u origin main


#based on https://www.atlassian.com/git/tutorials/dotfiles 
