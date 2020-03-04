#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"

print_in_purple "\n   Git\n\n"
brew_install "Git" "git"

print_in_purple "\n   Yarn\n\n"
if [ -d "$HOME/.nvm" ]; then
    brew_install "Yarn" "yarn"
fi

print_in_purple "\n   Quicklook\n\n"
brew_install "JSON" "quicklook-json" "homebrew/cask" "cask"
brew_install "Markdown" "qlmarkdown" "homebrew/cask" "cask"

print_in_purple "\n   Tmux\n\n"
brew_install "tmux" "tmux"
brew_install "tmux (pasteboard)" "reattach-to-user-namespace"

print_in_purple "\n   Spectacle\n\n"
brew_install "Spectacle" "spectacle" "homebrew/cask" "cask"

print_in_purple "\n   Utils\n\n"
brew_install "Unarchiver" "the-unarchiver" "homebrew/cask" "cask"
brew_install "FFmpeg" "ffmpeg"

print_in_purple "\n   Editors\n\n"
brew_install "Visual Studio Code" "visual-studio-code" "homebrew/cask" "cask"

print_in_purple "\n   Browsers\n\n"
brew_install "Chrome" "google-chrome" "homebrew/cask" "cask"
brew_install "Firefox Developer" "firefox-developer-edition" "homebrew/cask-versions" "cask"

print_in_purple "\n   Web Font Tools\n\n"
brew_install "Web Font Tools: TTF/OTF → WOFF (Zopfli)" "sfnt2woff-zopfli" "bramstein/webfonttools"
brew_install "Web Font Tools: TTF/OTF → WOFF" "sfnt2woff" "bramstein/webfonttools"
brew_install "Web Font Tools: WOFF2" "woff2" "bramstein/webfonttools"