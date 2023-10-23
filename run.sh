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

echo "Setup Complete!"