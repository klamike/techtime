sed -i.bu '/oneAsh/ s/0/1/' /Applications/techtime.app/Contents/MacOS/techtime.1s.sh
sed -i.bu '/twoAsh/ s/1/0/' /Applications/techtime.app/Contents/MacOS/techtime.1s.sh
sed -i.bu '/threeABsh/ s/1/0/' /Applications/techtime.app/Contents/MacOS/techtime.1s.sh
sed -i.bu '/fiveAsh/ s/1/0/' /Applications/techtime.app/Contents/MacOS/techtime.1s.sh
sed -i.bu '/sixAsh/ s/1/0/' /Applications/techtime.app/Contents/MacOS/techtime.1s.sh
sed -i.bu '/fastsh/ s/1/0/' /Applications/techtime.app/Contents/MacOS/techtime.1s.sh
find /Applications/techtime.app/Contents/MacOS/ -type f -name '*.sh.bu' -delete
killall Terminal