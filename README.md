# deis/docker-shell-dev

[![Build Status](https://travis-ci.org/deiscc/docker-shell-dev.svg?branch=master)](https://travis-ci.org/deiscc/docker-shell-dev)

A containerized environment for running [bats][] tests and/or [shellcheck][] against bash scripts.

## Image Contents

* [bats][] for running `.bats` tests
* [shellcheck][] for running `shellcheck` against bash scripts
* [jq][]

## Usage

Mount the host directory containing your bash `scripts` dir and bats
`tests` dir and then simply supply the appropriate `bats`/`shellcheck` command to run:

```console
$ docker run --rm \
  --volume /path/to/dir:/workdir \
  --workdir /workdir \
  deiscc/shell-dev:latest \
  bats tests
```

```console
$ docker run --rm \
  --volume /path/to/dir:/workdir \
  --workdir /workdir \
  deiscc/shell-dev:latest \
  shellcheck scripts/*
```

The latest deis/shell-dev Docker image is available at:

* [Docker Hub][]
  ```
  docker pull deiscc/shell-dev
  ```

[bats]: https://github.com/sstephenson/bats/
[shellcheck]: https://github.com/koalaman/shellcheck
[jq]: https://stedolan.github.io/jq/
[Docker Hub]: https://hub.docker.com
