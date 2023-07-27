#!/bin/bash

FOLDERTOWATCH=/var/www/html

cd $(dirname $0);

count=$(git --work-tree=$FOLDERTOWATCH status -s | wc -l)
echo Veränderte Dateien $count;
if [[ $count > 0 ]]; then
	git --work-tree=$FOLDERTOWATCH add $FOLDERTOWATCH && \
	git commit -m 'neuster Commit' && \
	git push
else
	echo "keine veränderung"
fi

