echo fetch all in ${1-}
cd ${1-}
git fetch --all &> out.txt

if [ ! -s "out.txt" ]; then exit; else cat out.txt; fi

exec bash
