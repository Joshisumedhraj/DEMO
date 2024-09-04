FROM jenkins/jenkins:lts

USER root

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs

RUN npm install -g newman newman-reporter-htmlextra uuid@latest

RUN apt-get update && apt-get install -y tini

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

USER jenkins

EXPOSE 8080

ENTRYPOINT ["/usr/bin/tini", "--"]

CMD ["/usr/local/bin/jenkins.sh"]
