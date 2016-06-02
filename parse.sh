#regex for getting route
# grep -o "[GPD][EU][TL].*\s\b[0-9][0-9][0-9]\b\s" sample.log
FIFTY=0
FORTY=0
THIRTY=0
TWENTY=0

for i in `grep -o "\s\b[0-9][0-9][0-9]\b\s" sample.log `; do
  echo "$i" 
   case "$i" in 
    [5]*)
      ((FIFTY++))
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
done

echo "50x: $FIFTY |s"
echo "40x: $FORTY |s"
echo "30x: $THIRTY |s"
echo "20x: $TWENTY |s"




