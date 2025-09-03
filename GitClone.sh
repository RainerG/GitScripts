export fn=${1-}_out.txt

git clone git@github-am.geo.conti.de:uidg9686/${1-}.git &> $fn

echo $fn
mv $fn ${1-}
cd ${1-}

if grep -q "already exists" $fn; then exit; else cat $fn; fi
            
exec bash
