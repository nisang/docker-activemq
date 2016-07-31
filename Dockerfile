FROM java:openjdk-8u66-jre
RUN mkdir -p /opt
WORKDIR /opt
#COPY apache-activemq-5.13.4-bin.tar.gz /opt
RUN wget -q -O apache-activemq-5.13.4-bin.tar.gz http://mirrors.aliyun.com/apache/activemq/5.13.4/apache-activemq-5.13.4-bin.tar.gz && tar -zxvf apache-activemq-5.13.4-bin.tar.gz && mv apache-activemq-5.13.4 apache-activemq
WORKDIR /opt/apache-activemq/bin/linux-x86-64
EXPOSE 61616 8151
#COPY run.sh ./run.sh
#RUN chmod +x run.sh
#CMD ["sh","run.sh"]
CMD ["./activemq","console"]
