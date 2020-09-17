#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../utils.sh" \
    && . "./install_utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Miscellaneous\n\n"
brew_install "Spectacle" "spectacle" "homebrew/cask" "cask"
brew_install "Spotify" "spotify" "homebrew/cask" "cask"
brew_install "1password" "1password" "homebrew/cask" "cask"

print_in_purple "\n   CLI Tools\n\n"
brew_install "Git" "git"
brew_install "coreutils" "coreutils"
# brew_install "automake" "automake"
# brew_install "autoconf" "autoconf"
brew_install "openssl" "openssl"
brew_install "libyaml" "libyaml" # Must come after openssl
brew_install "readline" "readline"
# brew_install "libxslt" "libxslt"
# brew_install "libtool" "libtool"
# brew_install "unixodbc" "unixodbc"
brew_install "unzip" "unzip"
brew_install "curl" "curl"
# brew_install "wx" "wxmac"
brew_install "ShellCheck" "shellcheck"
brew_install "Watchman" "watchman"

# print_in_purple "\n   Quicklook\n\n"
# brew_install "JSON" "quicklook-json" "homebrew/cask" "cask"
# brew_install "Markdown" "qlmarkdown" "homebrew/cask" "cask"

print_in_purple "\n   Tmux\n\n"
brew_install "tmux" "tmux"
brew_install "tmux (pasteboard)" "reattach-to-user-namespace"

print_in_purple "\n   Utils\n\n"
brew_install "Unarchiver" "the-unarchiver" "homebrew/cask" "cask"
brew_install "FFmpeg" "ffmpeg"

print_in_purple "\n   Development Tools\n\n"
brew_install "Visual Studio Code" "visual-studio-code" "homebrew/cask" "cask"
brew_install "Dash" "dash" "homebrew/cask" "cask"
brew_install "Postman" "postman" "homebrew/cask" "cask"
brew_install "iTerm 2" "iterm2" "homebrew/cask" "cask"
brew_install "Docker" "docker" "homebrew/cask" "cask"
brew_install "Docker" "docker"
brew_install "Yarn" "yarn"
# brew_install "Python" "python"
# brew_install "PyEnv" "pyenv"
# brew_install "PyEnv VirtualEnv" "pyenv-virtualenv"

print_in_purple "\n   Browsers\n\n"
brew_install "Chrome" "google-chrome" "homebrew/cask" "cask"
brew_install "Firefox Developer" "firefox-developer-edition" "homebrew/cask-versions" "cask"
if is_supported_version "$(get_os_version)" "10.11.4"; then
    printf "\n"
    brew_install "Safari Technology Preview" "safari-technology-preview" "homebrew/cask-versions" "cask"
fi

print_in_purple "\n   Communication Tools\n\n"
brew_install "Discord" "discord" "homebrew/cask" "cask"
brew_install "Slack" "slack" "homebrew/cask" "cask"
brew_install "Telegram" "telegram" "homebrew/cask" "cask"
brew_install "Teams" "microsoft-teams" "homebrew/cask" "cask"


print_in_purple "\n   Design Tools\n\n"
# brew_install "Sketch" "sketch" "homebrew/cask" "cask"
brew_install "Figma" "figma" "homebrew/cask" "cask"

print_in_purple "\n   Web Font Tools\n\n"
brew_install "Web Font Tools: TTF/OTF → WOFF (Zopfli)" "sfnt2woff-zopfli" "bramstein/webfonttools"
brew_install "Web Font Tools: TTF/OTF → WOFF" "sfnt2woff" "bramstein/webfonttools"
brew_install "Web Font Tools: WOFF2" "woff2" "bramstein/webfonttools"
brew_install "Fira-Code" "font-fira-code" "homebrew/cask-fonts" "cask"
brew_install "Hack" "font-hack" "homebrew/cask-fonts" "cask"
brew_install "Hasklig" "font-hasklig" "homebrew/cask-fonts" "cask"