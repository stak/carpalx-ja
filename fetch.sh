#!/bin/bash

TARGET_URI="http://mkweb.bcgsc.ca/carpalx/?"
EXCLUDE_DIRS="/carpalx/lists,/carpalx/etc,/carpalx/docs,/carpalx/distribution"
DOWNLOAD_DIR="`dirname $0`/original"
cd $DOWNLOAD_DIR

wget --mirror --restrict-file-names=windows -E -k -nc -np -nH -X $EXCLUDE_DIRS --cut-dirs=1 $TARGET_URI
rm robots.txt
