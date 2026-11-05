#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
build_dir=$(mktemp -d)
trap 'rm -rf -- "$build_dir"' EXIT
javac --release 8 -encoding UTF-8 -d "$build_dir" hellohellogit/src/hellohellogit/*.java
[[ "$(java -cp "$build_dir" hellohellogit.Hello)" == "hello" ]]
[[ -z "$(java -cp "$build_dir" hellohellogit.Hello23)" ]]
[[ -z "$(java -cp "$build_dir" hellohellogit.Hello2315)" ]]
printf '%s\n' 'All four Java classes compiled; three entrypoint smoke checks passed.'
