prdStart1="28800"
prdEnd1="31080"
prdStart2="31320"
prdEnd2="33600"
prdStart3="33840"
prdEnd3="36240"
prdStart4="36480"
prdEnd4="38760"
prdStart5="39000"
prdEnd5="41280"
prdStart6="41520"
prdEnd6="43800"
prdStart7="44040"
prdEnd7="46320"
prdStartevac="46320"
prdEndevac="48180"
prdStart8="48420"
prdEnd8="50700"
prdStart9="50940"
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
#prdevac
if [[ ! $(( sumsec )) < "$prdStartevac" && ! $(( sumsec )) > "$prdEndevac" ]]; then
evacperiod="1"
tdiff=$((prdEndevac - sumsec))
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
echo "1                8:00       8:38 | color = black"
else
echo "1                8:00       8:38"
fi
if [[ $secondperiod == "1" ]]; then
echo "2               8:42	      9:20 | color = black"
else
echo "2               8:42	      9:20"
fi
if [[ $thirdperiod == "1" ]]; then
echo "3               9:24	     10:04 | color = black"
else
echo "3               9:24	     10:04"
fi
if [[ $fourthperiod == "1" ]]; then
echo "4              10:08      10:46 | color = black"
else
echo "4              10:08      10:46"
fi
if [[ $fifthperiod == "1" ]]; then
echo "5              10:50      11:28 | color = black"
else
echo "5              10:50      11:28"
fi
if [[ $sixthperiod == "1" ]]; then
echo "6              11:32      12:10 | color = black"
else
echo "6              11:32      12:10"
fi
if [[ $seventhperiod == "1" ]]; then
echo "7               12:14       12:52 | color = black"
else
echo "7               12:14       12:52"
fi
if [[ $evacperiod == "1" ]]; then
echo "HR             12:52       1:23 | color = black"
else
echo "HR             12:52       1:23"
fi
if [[ $eighthperiod == "1" ]]; then
echo "8                1:27       2:05 | color = black"
else
echo "8                1:27       2:05"
fi
if [[ $ninthperiod == "1" ]]; then
echo "9               2:09       2:47 | color = black"
else
echo "9               2:09       2:47"
fi