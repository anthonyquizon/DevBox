rm ~/.bash_profile
ln -s $(pwd)/scripts/guest/bash_profile.sh ~/.bash_profile

rm ~/.ghci
ln -s $(pwd)/scripts/guest/ghci.hs ~/.ghci
