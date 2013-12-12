#!/bin/bash

cd ~/

## Pull down devstack from git
git clone https://github.com/openstack-dev/devstack.git

cd devstack

## configure the default passwords for allthethings
cat > localrc << EOF
DATABASE_PASSWORD=vagrant
RABBIT_PASSWORD=vagrant
SERVICE_TOKEN=vagrant
SERVICE_PASSWORD=vagrant
ADMIN_PASSWORD=vagrant
EOF

## Run the devstack setup
./stack.sh
