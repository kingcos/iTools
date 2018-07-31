# ----- EZconfigs - https://github.com/kingcos/EZconfigs -----
# - Homebrew Installation Part -
echo "----- 🚧 Homebrew Installation Part 🚧 -----"

# Check Homebrew
echo "🏁 Checking Homebrew..."
brew_version=`brew --version`

# Install with Homebrew, and check results
function installAndCheck() {
  # brew install $PACKAGE_NAME
  brew install $1

  # Check installation
  version_check_result=`$2`
  if [[ $version_check_result != "" ]]; then
    echo "🎉 \"$1\" installation successful!"
  else
    echo "❌ \"$1\" installation failed!, please check it!"
  fi
}

if [[ $brew_version =~ "Homebrew" ]]; then
  echo "✅ Checking finished, start to brew install..."
  installAndCheck "Go" "go version"
  installAndCheck "CocoaPods" "pod --version"
else
  echo "⚠️  Homebrew is NOT ready, please check it!"
fi
