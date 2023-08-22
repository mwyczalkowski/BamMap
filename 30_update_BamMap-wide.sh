# Update the BamMap-wide file.  This is a variable format file.  Will retain only the header and those
# rows which match to a UUID from the updated BamMap3

source config.sh
BM3="dat/BamMap3-updated.tsv"
BMWOUT="dat/BamMap-wide-updated.tsv"


head -n1 $BAMMAPW > $BMWOUT
fgrep -f <(cut -f 2 $BM3 | tail -n +2) $BAMMAPW >> $BMWOUT



>&2 echo Successfully completed.
>&2 echo Written to $BMWOUT
>&2 echo Original BamMap: $BAMMAPW
