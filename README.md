Download Oracle JDK jdk-7u80-linux-x64.tar.gz and jdk-8u401-linux-x64.tar.gz from
<https://www.oracle.com/java/technologies/downloads/archive/> to `docker/files`.

Build the docker image:

```sh
cd docker
docker build -t flaky -f Dockerfile .
```

To reproduce an issue:

```sh
# first enter the docker container
docker run -it -v <path-to-this-repository>:/repos flaky:latest

# go to the directory for the issue
cd /repos/<issue-id>
# clone, checkout, and compile
./run.sh
# run test
./runtest.sh
```

To run the test with developer's fix:

```sh
git -C code apply fix.patch
./runtest.sh
```
