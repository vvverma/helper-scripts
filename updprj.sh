# !/bin/bash

echo "Updating all projects...."
cd /home/vvverma/projects; \
for d in ./*/
do
echo "UPDATING PROJECT $d"
cd  "$d"
repo sync
echo "PROJECT "$d" UPDATED"
cd ..
done

echo "Finished updating all projects...."

