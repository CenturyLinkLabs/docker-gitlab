FROM sameersbn/gitlab:7.1.1

MAINTAINER Centurylink

ADD dbsetup.sh /app/setup/
RUN chmod +x /app/setup/dbsetup.sh

CMD ["/app/setup/dbsetup.sh"]

