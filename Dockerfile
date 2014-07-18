FROM sameersbn/gitlab:7.0.0

MAINTAINER CenturylinkLabs <ctl-labs-futuretech@centurylinklabs.com>

ADD dbsetup.sh /app/setup/
RUN /app/setup/dbsetup.sh

CMD ["app:start"]

