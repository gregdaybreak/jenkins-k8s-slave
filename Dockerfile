FROM gcr.io/cloud-solutions-images/jenkins-k8s-slave:latest

MAINTAINER Greg Brown greg.brown@lootcrate.com

# Gradle install on the slaves for WAR creation
ENV GRADLE_VERSION 4.2.1

RUN cd /usr/lib \
 && curl -fl https://downloads.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -o gradle-bin.zip \
 && unzip "gradle-bin.zip" \
 && ln -s "/usr/lib/gradle-${GRADLE_VERSION}/bin/gradle" /usr/bin/gradle \
 && rm "gradle-bin.zip" 

# Set Appropriate Environmental Variables
ENV GRADLE_HOME /usr/lib/gradle
ENV PATH $PATH:$GRADLE_HOME/bin

ENV CLOUDSDK_CORE_DISABLE_PROMPTS 1
RUN gcloud components update


