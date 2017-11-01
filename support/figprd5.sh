prdStartHR="28800"
prdEndHR="30780"
prdStart1="31020"
prdEnd1="33240"
prdStart2="33480"
prdEnd2="35700"
prdStart3="35940"
prdEnd3="38160"
prdStart4="38400"
prdEnd4="40680"
prdStart5="40920"
prdEnd5="43200"
prdStart6="43440"
prdEnd6="45720"
prdStart7="45960"
prdEnd7="47280"
prdStart8="48420"
prdEnd8="50640"
prdStart9="50880"
prdEnd9="53100"

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

##################figure out what period it is 2a#############################################
#prdHR
if [[ ! $(( sumsec )) < "$prdStartHR" && ! $(( sumsec )) > "$prdEndHR" ]]; then
homeroomperiod="1"
tdiff=$((prdEndHR - sumsec))
fi
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
#prd3
if [[ ! $(( sumsec )) < "$prdStart3" && ! $(( sumsec )) > "$prdEnd3" ]]; then
thirdperiod="1"
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
echo "Time Remaining: $tdiffformat | color = $black"
fi
#echo "Time Remaining: $tdiffformat | color = black"



########################Highlighting the current period 2a##########################################
if [[ $homeroomperiod == "1" ]]; then
echo "HR             8:00       8:33 | color = $black"
else
echo "HR             8:00       8:33"
fi
if [[ $firstperiod == "1" ]]; then
echo "1                8:37       9:14 | color = $black"
else
echo "1                8:37       9:14"
fi
if [[ $secondperiod == "1" ]]; then
echo "2               9:18       9:55 | color = $black"
else
echo "2               9:18       9:55"
fi
if [[ $thirdperiod == "1" ]]; then
echo "3               9:59      10:36 | color = $black"
else
echo "3               9:59      10:36"
fi
if [[ $fourthperiod == "1" ]]; then
echo "4              10:40      11:18 | color = $black"
else
echo "4              10:40      11:18"
fi
if [[ $fifthperiod == "1" ]]; then
echo "5              11:22      12:00 | color = $black"
else
echo "5              11:22      12:00"
fi
if [[ $sixthperiod == "1" ]]; then
echo "6              12:04      12:42 | color = $black"
else
echo "6              12:04      12:42"
fi
if [[ $seventhperiod == "1" ]]; then
echo "7               12:46       1:08 | color = $black"
else
echo "7               12:46       1:08"
fi
if [[ $eighthperiod == "1" ]]; then
echo "8                1:27       2:04 | color = $black"
else
echo "8                1:27       2:04"
fi
if [[ $ninthperiod == "1" ]]; then
echo "9               2:08       2:45 | color = $black"
else
echo "9               2:08       2:45"
fi