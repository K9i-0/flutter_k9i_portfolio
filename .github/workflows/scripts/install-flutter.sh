#!/bin/bash

TAG=$1
git clone https://github.com/flutter/flutter.git --depth 1 -b $TAG "$GITHUB_WORKSPACE/_flutter"
echo "$GITHUB_WORKSPACE/_flutter/bin" >> $GITHUB_PATH