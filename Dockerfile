FROM daocloud.io/daocloud/dao-tomcat

ADD webapp /vo/hello

ADD hello.xml $CATALINA_HOME/conf/Catalina/localhost
