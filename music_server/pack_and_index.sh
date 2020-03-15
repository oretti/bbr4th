#!/bin/sh

ls | xargs -L 1 bemuse-tools pack
rm index.cache index.json 2>/dev/null
bemuse-tools index

