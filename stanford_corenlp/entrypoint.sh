#!/bin/sh
export _JAVA_OPTIONS="$JAVA_OPTS"

OS=`uname`
# Some machines (older OS X, BSD, Windows environments) don't support readlink -e
if hash readlink 2>/dev/null; then
  scriptdir=`dirname $0`
else
  scriptpath=$(readlink -e "$0") || scriptpath=$0
  scriptdir=$(dirname "$scriptpath")
fi

java $JAVA_OPTS -cp "$scriptdir/*" edu.stanford.nlp.pipeline.StanfordCoreNLPServer $PORT
