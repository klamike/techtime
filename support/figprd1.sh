prdStart1="28800"
prdEnd1="31260"
prdStart2="31500"
prdEnd2="33960"
prdStart3="34200"
prdEnd3="37020"
prdStart4="37260"
prdEnd4="39720"
prdStart5="39960"
prdEnd5="42420"
prdStart6="42660"
prdEnd6="45120"
prdStart7="45360"
prdEnd7="47820"
prdStart8="48060"
prdEnd8="50520"
prdStart9="50760"
prdEnd9="53220"

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
echo "Time Remaining: $tdiffformat | color = black"
fi
#echo "Time Remaining: $tdiffformat | color = black"
if [[ $firstperiod == "1" ]]; then
echo "1                8:00       8:41 | color = black"
else
echo "1                8:00       8:41"
fi
if [[ $secondperiod == "1" ]]; then
echo "2               8:45       9:26 | color = black"
else
echo "2               8:45       9:26"
fi
if [[ $thirdperiod == "1" ]]; then
echo "3               9:30      10:17 | color = black"
else
echo "3               9:30      10:17"
fi
if [[ $fourthperiod == "1" ]]; then
echo "4              10:21      11:02 | color = black"
else
echo "4              10:21      11:02"
fi
if [[ $fifthperiod == "1" ]]; then
echo "5              11:06      11:47 | color = black"
else
echo "5              11:06      11:47"
fi
if [[ $sixthperiod == "1" ]]; then
echo "6              11:51      12:32 | color = black"
else
echo "6              11:51      12:32"
fi
if [[ $seventhperiod == "1" ]]; then
echo "7              12:36       1:17 | color = black"
else
echo "7              12:36       1:17"
fi
if [[ $eighthperiod == "1" ]]; then
echo "8                1:21       2:02 | color = black"
else
echo "8                1:21       2:02"
fi
if [[ $ninthperiod == "1" ]]; then
echo "9               2:06       2:47 | color = black"
else
echo "9               2:06       2:47"
fi