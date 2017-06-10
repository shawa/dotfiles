#!/bin/bash
# gratitude owed to https://gist.github.com/tylerwalts/9375263
set -euo pipefail
IFS=$'\n\t'

TIMEZONE='Europe/Dublin'

set_defaults() {
    echo " Expand save panel by default"
    defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

    echo " Expand print panel by default"
    defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

    echo " Turn off keyboard illumination when computer is not used for 5 minutes"
    defaults write com.apple.BezelServices kDimTime -int 300

    echo " Show IP address, hostname, OS version when clicking the clock in the login window"
    sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

    echo " Check for software updates daily, not just once per week"
    defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

    echo " Trackpad: enable tap to click for this user and for the login screen"
    defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
    defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
    defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

    echo " Increase sound quality for Bluetooth headphones/headsets"
    defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

    echo " Enable full keyboard access for all controls"
    defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

    echo " Set the timezone to $TIMEZONE"
    systemsetup -settimezone $TIMEZONE > /dev/null

    echo " Require password immediately after sleep or screen saver begins"
    defaults write com.apple.screensaver askForPassword -int 1
    defaults write com.apple.screensaver askForPasswordDelay -int 0

    echo " Finder: show hidden files by default"
    defaults write com.apple.finder AppleShowAllFiles -bool true

    echo " Finder: show all filename extensions"
    defaults write NSGlobalDomain AppleShowAllExtensions -bool true

    echo " Finder: show status bar"
    defaults write com.apple.finder ShowStatusBar -bool true

    echo " Avoid creating .DS_Store files on network volumes"
    defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

    echo " Use list view in all Finder windows by default"

    # Four-letter codes for the other view modes: icnv, clmv, Flwv"
    defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
    echo " Disable the warning before emptying the Trash"
    defaults write com.apple.finder WarnOnEmptyTrash -bool false

    echo " Automatically hide and show the Dock"
    defaults write com.apple.dock autohide -bool true
}

set_hot_corners() {
    echo " Hot corners"
    # Possible values:
    #  0: no-op
    #  2: Mission Control
    #  3: Show application windows
    #  4: Desktop
    #  5: Start screen saver
    #  6: Disable screen saver
    #  7: Dashboard
    # 10: Put display to sleep
    # 11: Launchpad

    echo " Top left screen corner → Mission Control"
    defaults write com.apple.dock wvous-tl-corner -int 2
    defaults write com.apple.dock wvous-tl-modifier -int 0

    # Top right screen corner → Notification Center
    defaults write com.apple.dock wvous-tr-corner -int 8
    defaults write com.apple.dock wvous-tr-modifier -int 0

    echo " Bottom right screen corner → Start screen saver"
    defaults write com.apple.dock wvous-br-corner -int 5
    defaults write com.apple.dock wvous-br-modifier -int 0
}

main() {
    sudo -v
    set_defaults
    set_hot_corners
}

main
