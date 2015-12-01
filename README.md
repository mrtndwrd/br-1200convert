# br-1200convert
Conversion script for the BR-1200's VR8 files

I didn't like importing raw files into audacity, so I made this script using
SOX. I only tested it on linux mint 17 for Boss BR-1200 files

It works by typing convert.sh and then a SONG directory which was copied from
the BR-1200:

./convert.sh SONG0011/

It will output which filename it is converting. Then the output .wav file will
be moved to a subdirectory for the recording it was for (my recordings always
had the same first 6 characters and then 2 differing for each audio track)

After it's done, you can run audacity and do file -> import -> audio, select
the files in 1 directory, and all your files will be imported in only three
clicks!
