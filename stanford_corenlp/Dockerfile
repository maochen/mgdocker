FROM ubuntu:latest

ENV JAVA_OPTS="-Xms4G -Xmx6G"

RUN apt-get update -y && \
	apt-get install -y apt-utils \
		default-jre \
		default-jdk \
		unzip \
		wget

RUN wget https://nlp.stanford.edu/software/stanford-corenlp-4.5.1.zip; \
	unzip stanford-corenlp-4.5.1.zip; \
  mv stanford-corenlp-4.5.1 CoreNLP; \
  rm -rf stanford-corenlp-4.5.1.zip; \
	cd CoreNLP;

ENV PORT 9000

EXPOSE 9000

WORKDIR CoreNLP

CMD java -cp '*' edu.stanford.nlp.pipeline.StanfordCoreNLPServer
