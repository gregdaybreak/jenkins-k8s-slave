FROM gcr.io/cloud-solutions-images/jenkins-k8s-slave:latest

MAINTAINER Greg Brown greg.brown@lootcrate.com
ENV CLOUDSDK_CORE_DISABLE_PROMPTS 1
RUN gcloud components update


