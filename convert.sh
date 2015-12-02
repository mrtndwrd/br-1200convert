#!/bin/bash
if [ $# -ne 1 ]
then
	echo "Usage: convert.sh DIRECTORY"
	exit 1
fi

# First argument is directory:
directory="$1"

# Loop through VR8 files
for f in $directory/*.VR8; do
	# Show progress
	echo $f
	# Make output file name
	o="${f%.VR8}.wav"
	# Make directory for this track (works for BR-1600)
	# TODO: Maybe 5 ?'s
	newdir="${o%??????}"
	# Convert file
	# -t file type: raw
	# -b bit size: 16
	# -c number of channels: 1 (per file)
	# -e encoding: signed integer
	# -r sample rate: 44100Khz
	sox -t raw -b 16 -c 1 -e signed-integer -r 44100 $f $o
	# Move to a directory made from the first 6 characters:
	mkdir -p $newdir
	mv $o $newdir
done
