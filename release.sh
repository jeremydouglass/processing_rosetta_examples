#!/usr/bin/env bash

RELD=release
ZIPD=rosetta_examples_p5

if [ -d $RELD/$ZIPD ]; then rm -Rf $RELD/$ZIPD; fi
mkdir -p $RELD/$ZIPD

cp examples.properties $RELD/$ZIPD.txt

cp -r examples $RELD/$ZIPD/examples
cp CONTRIBUTING.md $RELD/$ZIPD/
cp examples.properties $RELD/$ZIPD/
cp LICENSE.md $RELD/$ZIPD/
cp README.md $RELD/$ZIPD/

cd $RELD
if [ -f $ZIPD.zip ]; then rm $ZIPD.zip; fi
zip -r $ZIPD.zip $ZIPD -x "*.DS_Store" "*.git*"
rm -r $ZIPD

# In order to release
# 
# 1. check out a clean master (with no pending files)
# 2. update the version number and pretty version in examples.properties
# 3. commit and push that change to master e.g. "release 0.4" (pretty version)
# 4. run the release script in the repo root -- this generates release files 
# 5. on gihub, create a new release tagged with the version, e.g. v0.4
#    using the "release" commit on master created in step 3.
# 6. add two release/ assets as attachments to the GitHub release:
#    -  rosetta_examples_p5.txt
#    -  rosetta_examples_p5.zip
# 
# Done! The "latest" path will automatically point to the newest release
# and its download assets -- this will update what PDE displays and loads.
