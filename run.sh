echo "WARNING - This will reset any existing nvim/alacritty setups. back them up before running this script."

read -p "Confirm: (y/n): " confirm

if [ "$confirm" != "y" ]; then
    exit
fi

# Cleanup
rm -r ~/.config/nvim
rm -r ~/.config/alacritty


#Install
cp -r ./source_files/nvim ~/.config/
cp -r ./source_files/alacritty ~/.config/
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    cp ./source_files/fonts/* /usr/share/fonts/
elif [[ "$OSTYPE" == "darwin"* ]]; then
    cp ./source_files/fonts/* ~/Library/Fonts/
else
    echo "Could not detect OS, cannot install fonts"
    exit

if [[ "$OSTYPE" != "darwin"* ]]; then
    echo "Setup Complete!"
fi

read -p "Install Latex Support? (y/n) " latex_confirm
if [ "$latex_confirm" != "y"]; then
    echo "Setup Complete!"
    exit
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    brew cask install basictex
    brew install fswatch
    echo "alias newtex='bash ~/instant-neovim-code-editor/source_files/scripts/create_new_latex_project.sh'" >> ~/.zshrc
    echo "Installed Latex Dependencies and created new command 'newtex' to generate a project from a template."
fi

read -p "Install Handy Terminal Utilities (zoxide, zsh-autosuggestions, etc)? (y/n)" terminal_confirm
if [ "$terminal_confirm" != "y"]; then
    echo "Setup Complete!"
    exit
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
  brew install zoxide
  brew install zsh-autosuggestions
  echo "eval '\$(zoxide init zsh)'">> ~/.zshrc
  echo "source \$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
fi

echo "Setup Complete!"
