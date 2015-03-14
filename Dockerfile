FROM fabric8/base-sti

MAINTAINER iocanel@gmail.com
ENV STI_SCRIPTS_URL https://raw.githubusercontent.com/fabric8io/java-main/master/.sti/bin/

USER root

RUN mkdir /opt/jolokia && wget http://central.maven.org/maven2/org/jolokia/jolokia-jvm/1.2.3/jolokia-jvm-1.2.3-agent.jar -O /opt/jolokia/jolokia.jar

USER jboss

CMD ["/usr/bin/usage"]
