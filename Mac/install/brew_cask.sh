# ----- EZconfigs - https://github.com/kingcos/EZconfigs -----
# - Homebrew Cask Installation Part -
echo "----- 🚧 Homebrew Cask Installation Part 🚧 -----"

# Check Homebrew & cask
echo "🏁 Checking Homebrew & Homebrew-Cask..."
brew_version=`brew --version`
cask_version=`brew cask --version`

# Install with Homebrew-Cask, and check results
function installAndCheck() {
  # brew cask install $PACKAGE_NAME
  brew cask install $1

  # Check installation
  cd /Applications

  if [[ $2 =~ " " ]]; then
    ls_result=`ls -l | grep "$2"`
  else
    ls_result=`ls -l | grep $2`
  fi

  if [ "$ls_result" != "" ];then
    echo "🎉 \"$2\" installation successful!"
  else
    echo "❌ \"$2\" installation failed!, please check it!"
  fi
}

if [[ $brew_version =~ "Homebrew" && "$cask_version" =~ "Homebrew-Cask" ]]; then
  installAndCheck "alfred" "Alfred"
  # installAndCheck "charles" "Charles"
  installAndCheck "google-chrome" "Chrome"
  installAndCheck "github" "GitHub Desktop"
  installAndCheck "iina" "IINA"
  # installAndCheck "intellij-idea" "IntelliJ IDEA"
  installAndCheck "istat-menus" "iStat Menus"
  installAndCheck "iterm2" "iTerm"
  installAndCheck "macdown" "MacDown"
  # installAndCheck "obs" "OBS"
  installAndCheck "postman" "Postman"
  installAndCheck "sequel-pro" "Sequel Pro"
  installAndCheck "sketch" "Sketch"
  installAndCheck "visual-studio-code" "Visual Studio Code"
  installAndCheck "neteasemusic" "NeteaseMusic"

  # Clean up
#   brew cask cleanup
else
  echo "⚠️  Homebrew or Homebrew Cask is NOT ready, please check it!"
fi
