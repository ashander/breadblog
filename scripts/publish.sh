#!/bin/sh
# adapted from https://gohugo.io/tutorials/github-pages-blog/
# by Jaime Ashander

if [[ $(git status -s) ]]
then
	echo "The working directory is dirty. Please commit any pending changes."
	exit 1;
fi

(cd public/ && rm -rf *)
hugo
(cd public/ && git add --all && git commit -m "Publishing to gh-pages")
