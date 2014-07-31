FROM sameersbn/gitlab:latest

MAINTAINER Centurylink

ADD dbsetup.sh /app/setup/
RUN chmod +x /app/setup/dbsetup.sh

CMD ["/app/setup/dbsetup.sh"]

