sed -i.bu '/oneAsh/ s/1/0/' /Users/Mike/Desktop/Media/bitbar/techtime.1s.sh
sed -i.bu '/twoAsh/ s/1/0/' /Users/Mike/Desktop/Media/bitbar/techtime.1s.sh
sed -i.bu '/threeABsh/ s/1/0/' /Users/Mike/Desktop/Media/bitbar/techtime.1s.sh
sed -i.bu '/fiveAsh/ s/1/0/' /Users/Mike/Desktop/Media/bitbar/techtime.1s.sh
sed -i.bu '/sixAsh/ s/0/1/' /Users/Mike/Desktop/Media/bitbar/techtime.1s.sh
find /Users/Mike/Desktop/Media/bitbar/ -type f -name '*.sh.bu' -delete
