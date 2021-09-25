FROM docker.io/buildbot/buildbot-master:master

ENV \
    BUILDBOT_CONFIG_DIR=config \
    BUILDBOT_WORKER_PORT=9989 \
    BUILDBOT_WEB_URL=http://localhost:8010/ \
    BUILDBOT_WEB_PORT=tcp:port=8010

COPY ./master/master.cfg /buildbot/
