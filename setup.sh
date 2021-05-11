#!/usr/bin/env sh

set -e

packer build template.json
vagrant box add alpine ./alpine.3.13.5-aarch64-parallels.box
vagrant up --provider=parallels
vagrant box list
vagrant reload

# docker context create vagrant --docker "host=ssh://vagrant@10.211.55.37"
# docker context use vagrant
# docker ps