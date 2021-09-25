all: buildbot-master buildbot-worker

buildbot-master:
	docker run \
		--name=master \
		--hostname=buildmaster \
		--network=buildbotci \
		-p 8010:8010 \
		-d \
		buildbot_master_img:master

buildbot-worker:
	docker run \
		--name=worker \
		--hostname=worker1 \
		--network=buildbotci \
		-d \
		--env-file ./worker/env \
		docker.io/buildbot/buildbot-worker:master

build-master-image:
	docker build -t buildbot_master_img:master -f master/Dockerfile .
bi: build-master-image

clean:
	docker stop master; docker rm master; \
	docker stop worker; docker rm worker
c: clean

clean-image:
	docker rmi localhost/buildbot_master_img:master
ci: clean-image
