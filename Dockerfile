FROM daocloud.io/daocloud/dao-tomcat:v7.0.55

ADD webapp /vo/hello

ADD hello.xml $CATALINA_HOME/conf/Catalina/localhost
