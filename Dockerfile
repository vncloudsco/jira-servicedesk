FROM atlassian/jira-servicedesk:5.6-ubuntu-jdk11
LABEL maintainer="vouu <contact@manhtuong.net>" version="9.6.0"
RUN mkdir -p /var/jira
ADD agent.jar /var/agent/atlassian-agent.jar
ENV JAVA_OPTS="-javaagent:/var/agent/atlassian-agent.jar ${JAVA_OPTS}"
EXPOSE 8080