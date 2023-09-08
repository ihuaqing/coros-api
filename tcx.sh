#!/bin/bash

LABEL_ID=`node --loader ts-node/esm src/index.ts -u xiaojiehao123@gmail.com -p altercoros123 -o .`
SOURCE_TCX=${LABEL_ID}.tcx

# Delete old file, include tcx.1 style
rm ${SOURCE_TCX}*

wget https://oss.coros.com/tcx/451856893611098112/${SOURCE_TCX}

OBJECT_TCX=`python3 tcx.py ${SOURCE_TCX}`

if [ ! -f "${OBJECT_TCX}" ];then
  mv ${SOURCE_TCX} ${OBJECT_TCX}
else
  echo "file existed"
  rm ${SOURCE_TCX}
fi
