prdStart1="28800"
prdEnd1="31260"
prdStart2="31440"
prdEnd2="33840"
prdStartHR="34080"
prdEndHR="34620"
prdStart3="34860"
prdEnd3="37260"
prdStart4="37500"
prdEnd4="39900"
prdStart5="40140"
prdEnd5="42540"
prdStart6="42780"
prdEnd6="45180"
prdStart7="45420"
prdEnd7="47820"
prdStart8="48060"
prdEnd8="50460"
prdStart9="50700"
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
if [[ ! $(( sumsec )) < "$prdStartHR" && ! $(( sumsec )) > "$prdEndHR" ]]; then
homeroomperiod="1"
tdiff=$((prdEndHR - sumsec))
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

if [[ $firstperiod == "1" ]]; then
echo "1      8:00    8:41 | color = $black font = courier size = 14"
else
echo "1      8:00    8:41 | font = courier size = 14"
fi
if [[ $secondperiod == "1" ]]; then
echo "2      8:44    9:24 | color = $black font = courier size = 14"
else
echo "2      8:44    9:24 | font = courier size = 14"
fi
if [[ $homeroomperiod == "1" ]]; then
echo "HR     9:28    9:37 | color = $black font = courier size = 14"
else
echo "HR     9:28    9:37 | font = courier size = 14"
fi
if [[ $thirdperiod == "1" ]]; then
echo "3      9:41   10:21 | color = $black font = courier size = 14"
else
echo "3      9:41   10:21 | font = courier size = 14"
fi
if [[ $fourthperiod == "1" ]]; then
echo "4     10:25   11:05 | color = $black font = courier size = 14"
else
echo "4     10:25   11:05 | font = courier size = 14"
fi
if [[ $fifthperiod == "1" ]]; then
echo "5     11:09   11:49 | color = $black font = courier size = 14"
else
echo "5     11:09   11:49 | font = courier size = 14"
fi
if [[ $sixthperiod == "1" ]]; then
echo "6     11:53   12:33 | color = $black font = courier size = 14"
else
echo "6     11:53   12:33 | font = courier size = 14"
fi
if [[ $seventhperiod == "1" ]]; then
echo "7     12:37    1:17 | color = $black font = courier size = 14"
else
echo "7     12:37    1:17 | font = courier size = 14"
fi
if [[ $eighthperiod == "1" ]]; then
echo "8      1:21    2:01 | color = $black font = courier size = 14"
else
echo "8      1:21    2:01 | font = courier size = 14"
fi
if [[ $ninthperiod == "1" ]]; then
echo "9      2:05    2:45 | color = $black font = courier size = 14"
else
echo "9      2:05    2:45 | font = courier size = 14"
fi