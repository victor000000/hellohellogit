hellohellogit
=============

## Local checks and CI

Use JDK 17 and run `bash scripts/check.sh` from any directory. The check compiles
all four classes with Java 8 compatibility, verifies that `Hello` prints `hello`,
and verifies the two empty example entrypoints. Build files use a disposable
temporary directory. There are no downloaded libraries, credentials, or services.

The pinned GitHub Actions workflow runs the same checks. These are legacy learning
examples, not a production service. No deployment/CD or release target is configured.
