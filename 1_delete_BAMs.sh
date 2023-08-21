UUIDS="dat/UUID_delete.dat"
#UUIDS="dat/UUID_short.dat"
BAMMAP3="/home/m.wyczalkowski/Projects/GDAN/GDAN.catalog/Catalog3/WUSTL-BamMap/CTSP_KIRC.BamMap3.tsv"
BMOUT="dat/BamMap3-updated.tsv"

# Note, there's also the file CTSP_KIRC.BamMap-wide.tsv
# Process that too.  rm_UUID.sh removes based on grep to UUID, so it will process both OK

CMD="cat $UUIDS | bash src/rm_UUID.sh $@ -B $BAMMAP3 - > $BMOUT"

>&2 echo Running: $CMD
eval $CMD

