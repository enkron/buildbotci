#!/bin/bash

git log "$(git describe --tags --abbrev=0)..HEAD" --oneline > CHANGELOG
