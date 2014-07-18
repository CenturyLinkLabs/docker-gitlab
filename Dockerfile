FROM sameersbn/gitlab:7.0.0

MAINTAINER CenturylinkLabs <ctl-labs-futuretech@centurylinklabs.com>

CMD ["app:rake gitlab:setup"]
CMD ["app:start"]

