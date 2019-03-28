# Fuseki + Appinsights

docker run -p 3030:3030 --name "fuseki" -e key="" -e JAVA_OPTS="-Xmx10G -Xms10G" -v c:\docker\app:/fuseki -d castorgmc/ekgfuseki

# Run
http://127.0.0.1:3030
