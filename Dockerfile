FROM daocloud.io/daocloud/dao-tomcat:v7.0.55

RUN mkdir -p $CATALINA_HOME/conf/Catalina/localhost
ADD hello.xml $CATALINA_HOME/conf/Catalina/localhost

ADD webapp /vo/hello