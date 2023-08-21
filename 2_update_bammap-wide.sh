# Update the BamMap-wide file.  This is a variable format file.  Will retain only the header and those
# rows which match to a UUID from the updated BamMap3

BAMMAPW="/home/m.wyczalkowski/Projects/GDAN/GDAN.catalog/Catalog3/WUSTL-BamMap/CTSP_KIRC.BamMap-wide.tsv"
BM3="dat/BamMap3-updated.tsv"
BMWOUT="dat/BamMap-wide-updated.tsv"


head -n1 $BAMMAPW > $BMWOUT
fgrep -f <(cut -f 2 $BM3 | tail -n +2) $BAMMAPW >> $BMWOUT


>&2 echo Written to $BMWOUT
