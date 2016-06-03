#regex for getting route
# grep -o "[GPD][EU][TL].*\s\b[0-9][0-9][0-9]\b\s" sample.log
FIFTY=0
FORTY=0
THIRTY=0
TWENTY=0
ARRAY=()
while read -r line; do
  code=`echo "$line" | grep -o "\s[0-9][0-9][0-9]" | xargs`
  echo "$line"
  echo "$code"
   case $code in 
    [5]*)
       ((FIFTY++))
       ARRAY=("${ARRAY[@]}" "$line")
    ;;
     [4]*)
      ((FORTY++))
    ;;
     [3]*)
      ((THIRTY++))
    ;;
     [2]*)
       ((TWENTY++))
    ;;
   esac
 done <<< "$(grep -o "[GPD][EU][TL].*\s\b[0-9][0-9][0-9]\b\s" sample.log)" 

echo "50x: $FIFTY |s"
echo "40x: $FORTY |s"
echo "30x: $THIRTY |s"
echo "20x: $TWENTY |s"

echo ${ARRAY[*]}


