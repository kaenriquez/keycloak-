FROM ubuntu:latest

RUN /opt/jboss/tools/build-keycloak.sh

EXPOSE 8080
EXPOSE 8080

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]

CMD ["-b", "0.0.0.0"]
