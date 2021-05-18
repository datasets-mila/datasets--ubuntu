#!/bin/bash
set -o errexit -o pipefail

# this script is meant to be used with 'datalad run'

python3 -m pip install -r ubuntu-ranking-dataset-creator/requirements.txt

export NLTK_DATA=./nltk_data
mkdir -p $NLTK_DATA

ln -sf ubuntu-ranking-dataset-creator/src/meta/ .

# Content of ubuntu-ranking-dataset-creator/src/generate.sh
python3 ubuntu-ranking-dataset-creator/src/download_punkt.py
python3 scripts/create_ubuntu_dataset.py "$@" --output 'train.csv' 'train'
python3 scripts/create_ubuntu_dataset.py "$@" --output 'test.csv' 'test'
python3 scripts/create_ubuntu_dataset.py "$@" --output 'valid.csv' 'valid'

rm -f files_count.stats
for dir in dialogs/*/
do
       echo $(find $dir -type f | wc -l; echo $dir) >> files_count.stats
done

du -s dialogs/*/ > disk_usage.stats

md5sum ubuntu_dialogs.tgz *.csv > md5sums

# Clean up
rm -rf nltk_data/
