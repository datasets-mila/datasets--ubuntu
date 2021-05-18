#!/bin/bash
set -o errexit -o pipefail

# this script is meant to be used with 'datalad run'

for file_url in \
	"http://dataset.cs.mcgill.ca/ubuntu-corpus-1.0/ubuntu_dialogs.tgz ubuntu_dialogs.tgz" \
	"http://dataset.cs.mcgill.ca/ubuntu-corpus-1.0/ubuntu_dataset.tgz.aa ubuntu_dataset.tgz.aa" \
	"http://dataset.cs.mcgill.ca/ubuntu-corpus-1.0/ubuntu_dataset.tgz.ab ubuntu_dataset.tgz.ab" \
	"http://dataset.cs.mcgill.ca/ubuntu-corpus-1.0/ubuntu_dataset.tgz.ac ubuntu_dataset.tgz.ac" \
	"http://dataset.cs.mcgill.ca/ubuntu-corpus-1.0/ubuntu_dataset.tgz.ad ubuntu_dataset.tgz.ad" \
	"http://dataset.cs.mcgill.ca/ubuntu-corpus-1.0/ubuntu_dataset.tgz.ae ubuntu_dataset.tgz.ae" \
	"http://dataset.cs.mcgill.ca/ubuntu-corpus-1.0/ubuntu_blobs.tgz ubuntu_blobs.tgz"
do
        echo ${file_url} | git-annex addurl -c annex.largefiles=anything --raw --batch --with-files
done

cat ubuntu_dataset.tgz.a* | tar -xz

md5sum *.tgz* > md5sums
