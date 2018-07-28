# ----- EZconfigs - https://github.com/kingcos/EZconfigs -----
# - Homebrew Cask Installation Part -
echo "----- 🚧 Homebrew Cask Installation Part 🚧 -----"

# Check Homebrew & cask
echo "🏁 Checking Homebrew & Homebrew-Cask..."
brew_version=`brew --version`
cask_version=`brew cask --version`

# Install with Homebrew-Cask
function installWithHomebrewCask() {
    software_name=$1
    # brew cask install $PACKAGE_NAME
    brew cask install $1
}

if [[ $brew_version =~ "Homebrew" && "$cask_version" =~ "Homebrew-Cask" ]]; then
  installWithHomebrewCask "alfred"
else
  echo "⚠️  Homebrew or Homebrew Cask is NOT ready, please check!"
fi
