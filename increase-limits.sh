#!/bin/sh

curl -O https://raw.githubusercontent.com/shubhindia/mac-setup/master/configs/limit.maxfiles.plist
curl -O https://raw.githubusercontent.com/shubhindia/mac-setup/master/configs/limit.maxproc.plist

sudo mv limit.maxfiles.plist /Library/LaunchDaemons
sudo mv limit.maxproc.plist /Library/LaunchDaemons

sudo chown root:wheel /Library/LaunchDaemons/limit.maxfiles.plist
sudo chown root:wheel /Library/LaunchDaemons/limit.maxproc.plist

sudo launchctl load -w /Library/LaunchDaemons/limit.maxfiles.plist
sudo launchctl load -w /Library/LaunchDaemons/limit.maxproc.plist