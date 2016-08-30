#!/bin/bash

TARGET_URI="http://mkweb.bcgsc.ca/carpalx/?"
EXCLUDE_DIRS="/carpalx/lists,/carpalx/etc,/carpalx/docs,/carpalx/distribution"
DOWNLOAD_DIR="`dirname $0`/original"
mkdir -p $DOWNLOAD_DIR
cd $DOWNLOAD_DIR

ENTRY_PAGE=""
if [ $# -eq 1 ]; then
	ENTRY_PAGE=$1
fi

wget --mirror --restrict-file-names=windows -E -k -np -nH -X $EXCLUDE_DIRS --cut-dirs=1 $TARGET_URI$ENTRY_PAGE
rm robots.txt
