echo Open commits in ${1-}
cd ${1-}
git diff &> out.txt

if [ ! -s "out.txt" ]; then exit; else cat out.txt; fi

exec bash
