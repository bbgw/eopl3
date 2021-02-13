#!/usr/bin/env bash
set -e

for i in ` find . -name "*.scm" | sed -e "s/\(\.[^.]*\)\.scm$/\1/g"` ; do
    echo "${i}.scm -> ${i}.rkt" ;
    git mv "${i}.scm" "${i}.rkt" ;
done