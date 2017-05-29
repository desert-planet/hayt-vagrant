#!/bin/bash
set -e
apt-get update -qq
apt-get install -y git build-essential nodejs nodejs-legacy npm coffeescript redis-server libgd2-xpm-dev libicu-dev
