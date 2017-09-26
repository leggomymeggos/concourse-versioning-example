#!/usr/bin/env bash

server_dir="$(pwd) source-code"
version="$(cat version/number)"

pushd $server_dir
	git tag $version
	git push --tags origin master
popd
