#!/usr/bin/env bash

set -e

mkdir /tmp
touch /tmp/ssh_key

cat $ssh_key > /tmp/ssh_key

server_dir="$(pwd)/source-code"
version="$(cat version/number)"

pushd $server_dir
	git tag $version
	GIT_SSH_COMMAND='ssh -i /tmp/ssh_key' git push --tags origin master
popd
