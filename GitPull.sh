echo pull ${1-}
cd ${1-}
git pull --all &> out.txt 

if grep -q "Already up to date" "out.txt"; then exit; else cat out.txt; fi

exec bash
