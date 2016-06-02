#regex for getting route
# grep -o "[GPD][EU][TL].*\s\b[0-9][0-9][0-9]\b\s" sample.log
FIFTY=0
FORTY=0
THIRTY=0
TWENTY=0
ARRAY=()
grep -o "[GPD][EU][TL].*\s\b[0-9][0-9][0-9]\b\s" sample.log | 
while read -r line; do
  echo $line
  code=`echo "$line" | grep -o "[0-9][0-9][0-9]"`
  echo "$code"  
   case $code in 
    [5]*)
       $FIFTY=$((FIFTY+1))
      $ARRAY+="$line"
    ;;
     [4]*)
      $FORTY=$++))
    ;;
     [3]*)
      (($THIRTY++))
    ;;
     [2]*)
      (($TWENTY++))
    ;;
   esac
 done

echo "50x: $FIFTY |s"
echo "40x: $FORTY |s"
echo "30x: $THIRTY |s"
echo "20x: $TWENTY |s"

#echo ${ARRAY[*]}


