echo add safe directory ${1-}
cd ${1-}
git config --global --add safe.directory ${1-}

exec bash
