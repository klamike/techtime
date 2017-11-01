prdStart1="28800"
prdEnd1="30840"
prdStart2="31080"
prdEnd2="33120"
prdStart3="33360"
prdEnd3="35700"
prdStart4="35940"
prdEnd4="37980"
prdStart5="38220"
prdEnd5="40260"
prdStart6="40500"
prdEnd6="42540"
prdStart7="42780"
prdEnd7="44820"
prdStart8="45060"
prdEnd8="47100"
prdStart9="47340"
prdEnd9="49380"
prdStartFC="49620"
prdEndFC="53220"

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
#prdfc
if [[ ! $(( sumsec )) < "$prdStartFC" && ! $(( sumsec )) > "$prdEndFC" ]]; then
fcperiod="1"
tdiff=$((preEndFC - sumsec))
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
echo "1                8:00       8:34 | color = $black"
else
echo "1                8:00       8:34"
fi
if [[ $secondperiod == "1" ]]; then
echo "2               8:38	      9:12 | color = $black"
else
echo "2               8:38	      9:12"
fi
if [[ $thirdperiod == "1" ]]; then
echo "3               9:16	      9:55 | color = $black"
else
echo "3               9:16	      9:55"
fi
if [[ $fourthperiod == "1" ]]; then
echo "4               9:59      10:33 | color = $black"
else
echo "4               9:59      10:33"
fi
if [[ $fifthperiod == "1" ]]; then
echo "5              10:37      11:11 | color = $black"
else
echo "5              10:37      11:11"
fi
if [[ $sixthperiod == "1" ]]; then
echo "6              11:15      11:49 | color = $black"
else
echo "6              11:15      11:49"
fi
if [[ $seventhperiod == "1" ]]; then
echo "7               11:53       12:27 | color = $black"
else
echo "7               11:53       12:27"
fi
if [[ $eighthperiod == "1" ]]; then
echo "8             12:31       1:05 | color = $black"
else
echo "8             12:31       1:05"
fi
if [[ $ninthperiod == "1" ]]; then
echo "9               1:09       1:43 | color = $black"
else
echo "9               1:09       1:43"
fi
if [[ $fcperiod == "1" ]]; then
echo "FC              1:47       2:47 | color = $black"
else
echo "FC              1:47       2:47"
fi