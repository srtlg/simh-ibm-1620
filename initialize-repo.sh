set -e
[ -x `type -p curl` ]
[ -x `type -p bsdar` ]
mkdir dl
( cd dl; curl -L http://www.bitsavers.org/bits/IBM/1620/1620.zip | bsdtar xf - )

for f in cb2asc crd2asc
do
( cd util; curl -O -L https://raw.githubusercontent.com/mdoege/IBM1620-Baseball/master/$f.py )
done
