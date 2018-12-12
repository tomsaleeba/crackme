#!/bin/bash
# runs the docker container
cd `dirname "$0"`/..
# thanks for security tips:
#   https://github.com/moby/moby/issues/20064#issuecomment-291095117
#   https://stackoverflow.com/a/52683564/1410035
#   https://stackoverflow.com/a/46676868/1410035
docker run \
  --rm \
  -it \
  --cap-add=SYS_PTRACE \
  --security-opt seccomp:unconfined \
  --security-opt apparmor:unconfined \
  disconnect3d/crackme
