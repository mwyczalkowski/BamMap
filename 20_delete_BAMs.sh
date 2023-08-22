source config.sh

BMOUT="dat/BamMap3-updated.tsv"

# Recommend running with -d first time
CMD="cat $UUIDS | bash src/rm_UUID.sh $@ -B $BAMMAP3 - > $BMOUT"

>&2 echo Running: $CMD
eval $CMD

>&2 echo Successfully completed.
>&2 echo Written to $BMOUT
>&2 echo Original BamMap: $BAMMAP3
