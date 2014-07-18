FROM sameersbn/gitlab:latest

MAINTAINER CenturylinkLabs <ctl-labs-futuretech@centurylinklabs.com>

ADD dbsetup.sh /app/setup/
RUN chmod +x /app/setup/dbsetup.sh

CMD ["/app/setup/dbsetup.sh"]

