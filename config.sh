UUIDS="dat/UUID_delete.dat"
PROJECT="CPTAC4-STAD"

# Existing files.  These are not modified
#CATALOG="/home/m.wyczalkowski/Projects/GDAN/GDAN.catalog/Catalog3/${PROJECT}.Catalog-REST.tsv"
CATALOG="/home/m.wyczalkowski/Projects/GDAN/GDAN.catalog/Catalog3/${PROJECT}.Catalog3.tsv"
BAMMAP3="/home/m.wyczalkowski/Projects/GDAN/GDAN.catalog/Catalog3/WUSTL-BamMap/${PROJECT}.BamMap3.tsv"
BAMMAPW="/home/m.wyczalkowski/Projects/GDAN/GDAN.catalog/Catalog3/WUSTL-BamMap/${PROJECT}.BamMap-wide.tsv"

if [ ! -e $CATALOG ]; then 
    >&2 echo Error: Catalog does not exist: $CATALOG
    exit 1
fi

if [ ! -e $BAMMAP3 ]; then 
    >&2 echo Error: BAMMAP3 does not exist: $BAMMAP3
    exit 1
fi

if [ ! -e $BAMMAPW ]; then 
    >&2 echo Error: BAMMAPW does not exist: $BAMMAPW
    exit 1
fi
