#!/bin/bash
WORKING_DIR=$PWD
if [ ! -z $key ]
  then
    INS_KEY=$key
    cat $WORKING_DIR/lib/ApplicationInsights.xml | sed -e "s/Key>.*</Key>$INS</g" -i $WORKING_DIR/lib/ApplicationInsights.xml
    echo "Use instrumentation key: "$INS_KEY
else
    echo "Use default instrumentation key."
fi

RUN_COMMAND="java"
if [ ! -z "$JAVA_OPTS" ] 
  then
   RUN_COMMAND=$RUN_COMMAND" "$JAVA_OPTS
   echo "Java opts: "$RUN_COMMAND
fi

cp "$FUSEKI_HOME/shiro.ini" "$FUSEKI_BASE/shiro.ini"
RUN_COMMAND=$RUN_COMMAND" -D'log4j.debug' -Dlog4j.configuration=\"file:log4j.xml\" -cp \"fuseki-server.jar:lib/*\" org.apache.jena.fuseki.cmd.FusekiCmd"
echo $RUN_COMMAND
eval $RUN_COMMAND
