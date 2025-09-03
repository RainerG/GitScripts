echo checkout ${1-}
cd ${1-}
git checkout -f "master" &> out.txt

fsize=$(stat -c %s "out.txt")

echo $fsize

#if [[ -f "out.txt" && "$fsize" -lt "121" ]]; then exit; else cat out.txt; fi
if grep -q "up to date" "out.txt" || grep -q "HEAD is now at" "out.txt";  then exit; else cat out.txt; fi

exec bash
