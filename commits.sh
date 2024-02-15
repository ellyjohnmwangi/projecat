#!/bin/bash
list=("added index file","updated readme file", "fixed pep 8 errors","Code clean up","deleted media files","extra code removed")
for i in {1..12}
do
	touch temp$i.txt
	git add -A
	a="Sun Mar "
	b=$i
	c=" 14:00 2024 +0530"
	export GIT_AUTHOR_DATE=$a$b$c
	export GIT_COMMITTER_DATE=$a$b$c
	git commit -am "`echo ${list[$RANDOM % ${#list[@]} ]}`"
	rm temp$i.txt
	export GIT_AUTHOR_DATE=$a$b$c
	export GIT_COMMITTER_DATE=$a$b$c
	export GIT_AUTHOR_NAME="ellyjohnmwangi"
	export GIT_AUTHOR_EMAIL="ellyjohnmwangi@gmail.com"
	export GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
	export GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
	git commit -m "Code fix"
	git commit -am "`echo ${list[$RANDOM % ${#list[@]} ]}`"
done