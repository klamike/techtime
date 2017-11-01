prdStart1="28800"
prdEnd1="30900"
prdStart2="31140"
prdEnd2="33240"
prdStart3A="33480"
prdEnd3A="36240"
prdStart3B="36480"
prdEnd3B="39180"
prdStart4="39420"
prdEnd4="41520"
prdStart5="41760"
prdEnd5="43860"
prdStart6="44100"
prdEnd6="46200"
prdStart7="46440"
prdEnd7="48540"
prdStart8="48780"
prdEnd8="50880"
prdStart9="51120"
prdEnd9="53220"

if [ "$BitBarDarkMode" ]; then
  # OSX has Dark Mode enabled.
  black="white"
else
  # OSX does not have Dark Mode
  black="black"
fi

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

##################figure out what period it is 3ab#############################################
#prd1
if [[ ! $(( sumsec )) < "$prdStart1" && ! $(( sumsec )) > "$prdEnd1" ]]; then
firstperiod="1"
tdiff=$((prdEnd1 - sumsec))
fi
#prd2
if [[ ! $(( sumsec )) < "$prdStart2" && ! $(( sumsec )) > "$prdEnd2" ]]; then
secondperiod="1"
tdiff=$((prdEnd2 - sumsec))
fi
#prd2
if [[ ! $(( sumsec )) < "$prdStart3A" && ! $(( sumsec )) > "$prdEnd3A" ]]; then
threeaperiod="1"
tdiff=$((prdEndHR - sumsec))
fi
#prd3
if [[ ! $(( sumsec )) < "$prdStart3B" && ! $(( sumsec )) > "$prdEnd3B" ]]; then
threebperiod="1"
tdiff=$((prdEnd3 - sumsec))
fi
#prd4
if [[ ! $(( sumsec )) < "$prdStart4" && ! $(( sumsec )) > "$prdEnd4" ]]; then
fourthperiod="1"
tdiff=$((prdEnd4 - sumsec))
fi
#prd5
if [[ ! $(( sumsec )) < "$prdStart5" && ! $(( sumsec )) > "$prdEnd5" ]]; then
fifthperiod="1"
tdiff=$((prdEnd5 - sumsec))
fi
#prd6
if [[ ! $(( sumsec )) < "$prdStart6" && ! $(( sumsec )) > "$prdEnd6" ]]; then
sixthperiod="1"
tdiff=$((prdEnd6 - sumsec))
fi
#prd7
if [[ ! $(( sumsec )) < "$prdStart7" && ! $(( sumsec )) > "$prdEnd7" ]]; then
seventhperiod="1"
tdiff=$((prdEnd7 - sumsec))
fi
#prd8
if [[ ! $(( sumsec )) < "$prdStart8" && ! $(( sumsec )) > "$prdEnd8" ]]; then
eighthperiod="1"
tdiff=$((prdEnd8 - sumsec))
fi
#prd9
if [[ ! $(( sumsec )) < "$prdStart9" && ! $(( sumsec )) > "$prdEnd9" ]]; then
ninthperiod="1"
tdiff=$((prdEnd9 - sumsec))
fi
##prdt for testing
#if [[ ! $(( sumsec )) < "$prdStartt" && ! $(( sumsec )) > "$prdEndt" ]]; then
#tperiod="1"
#tdiff=$((prdEndt - sumsec))
#fi
# finding difference between current and end of period and echoing it at top of window
((sec=tdiff%60, tdiff/=60, min=tdiff%60, hrs=tdiff/60))
tdiffformat=$(printf "%d:%02d:%02d" $hrs $min $sec)
if [[ $hrs == "0" ]]; then 
tdiffformat=$(printf "%02d:%02d" $min $sec)
echo "Time Remaining: $tdiffformat | color = black"
fi
#echo "Time Remaining: $tdiffformat | color = black"



########################Highlighting the current period 2a##########################################

if [[ $firstperiod == "1" ]]; then
echo "1                8:00       8:35 | color = $black"
else
echo "1                8:00       8:35"
fi
if [[ $secondperiod == "1" ]]; then
echo "2               8:39       9:14 | color = $black"
else
echo "2               8:39       9:14"
fi
if [[ $threeaperiod == "1" ]]; then
echo "3A             9:18       10:04 | color = $black"
else
echo "3A             9:18       10:04"
fi
if [[ $threebperiod == "1" ]]; then
echo "3B               10:08      10:53 | color = $black"
else
echo "3B               10:08      10:53"
fi
if [[ $fourthperiod == "1" ]]; then
echo "4              10:57      11:32 | color = $black"
else
echo "4              10:57      11:32"
fi
if [[ $fifthperiod == "1" ]]; then
echo "5              11:36      12:11 | color = $black"
else
echo "5              11:36      12:11"
fi
if [[ $sixthperiod == "1" ]]; then
echo "6              12:15      12:50 | color = $black"
else
echo "6              12:15      12:50"
fi
if [[ $seventhperiod == "1" ]]; then
echo "7               12:54       1:29 | color = $black"
else
echo "7               12:54       1:29"
fi
if [[ $eighthperiod == "1" ]]; then
echo "8                1:33       2:08 | color = $black"
else
echo "8                1:33       2:08"
fi
if [[ $ninthperiod == "1" ]]; then
echo "9               2:12       2:47 | color = $black"
else
echo "9               2:12       2:47"
fi