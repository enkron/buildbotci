# buildbotci

## configuration
https://docs.buildbot.net/latest/manual/configuration/index.html

## for creating a git server with `buildroot` stable realese
One manual step is required: create `Gogs` repository for buildroot release
All other steps are automated and are contained inside the `Makefile`

```bash
wget https://buildroot.org/downloads/buildroot-2021.08.tar.gz
tar xzvf buildroot-2021.08.tar.gz
cd buildroot-2021.08/
cp get_changelog.sh .
```

TODO: complected the file with all deployment process
