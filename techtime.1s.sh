#!/bin/bash
#
# <bitbar.title>Bell Schedule</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Michael Klamkin</bitbar.author>
# <bitbar.author.github>klamike</bitbar.author.github>
# <bitbar.desc>Bell Schedule for Staten Island Technical High School.</bitbar.desc>
echo "| templateImage=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"
echo "---" #menubar icon
#echo "Bell Schedule | color=black"
#current time in unix time
#SCHEDULE SELECT#################################################################################
oneAsh="0"
twoAsh="0"   #023456789
threeABsh="0"
fiveAsh="1"
sixAsh="0"
factsh="0"
oneA=$oneAsh
twoA=$twoAsh
threeAB=$threeABsh
fiveA=$fiveAsh
sixA=$sixAsh
fact=$factsh

BitBarDarkMode=${BitBarDarkMode}
if [ $BitBarDarkMode ]; then
  # OSX has Dark Mode enabled.
  black="white"
else
  # OSX does not have Dark Mode
  black="black"
fi
echo "Schedule |color=$black"
echo "--1A|bash =/Applications/techtime.app/Contents/MacOS/support/oneAscript.sh"
echo "--2A|bash =/Applications/techtime.app/Contents/MacOS/support/twoAscript.sh"
echo "--3AB|bash=/Applications/techtime.app/Contents/MacOS/support/threeABscript.sh"
echo "--5A|bash =/Applications/techtime.app/Contents/MacOS/support/fiveAscript.sh"
echo "--6A|bash =/Applications/techtime.app/Contents/MacOS/support/sixAscript.sh"
echo "--FC|bash =/Applications/techtime.app/Contents/MacOS/support/factscript.sh"

hours="$(date +%H)"
hours=${hours#0}
hourssec=$(($hours * 3600))
hourssec=${hourssec#0}
mins="$(date +%M)"
mins=${mins#0}
minssec=$(($mins * 60))
minssec=${minssec#0}
sec="$(date +%S)"
sec=${sec#0}
sumsec=$(($hourssec + $minssec + $sec))

#1A
if [[ $oneA == "1" ]]; then
/bin/bash /Applications/techtime.app/Contents/MacOS/support/figprd1.sh
fi
#2A
if [[ $twoA == "1" ]]; then
/bin/bash /Applications/techtime.app/Contents/MacOS/support/figprd2.sh
fi
#3AB
if [[ $threeAB == "1" ]]; then
/bin/bash /Applications/techtime.app/Contents/MacOS/support/figprd3.sh
fi
#5A
if [[ $fiveA == "1" ]]; then
/bin/bash /Applications/techtime.app/Contents/MacOS/support/figprd5.sh
fi
#5A
if [[ $sixA == "1" ]]; then
/bin/bash /Applications/techtime.app/Contents/MacOS/support/figprd6.sh
fi
#FC
if [[ $fact == "1" ]]; then
/bin/bash /Applications/techtime.app/Contents/MacOS/support/figprdfact.sh
fi
if [ -d /Users/Mike/Desktop/Apple\ TV\ Photo\ Cache ]; then
  echo "Deleting Apple TV Photo Cache"
  rm -r /Users/Mike/Desktop/Apple\ TV\ Photo\ Cache
fi
