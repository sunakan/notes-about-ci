#!/bin/sh
circleci config process .circleci/config.yml > .circleci/config-2.0.yml
circleci local execute -c .circleci/config-2.0.yml -e DISCORD_WEBHOOK="${DISCORD_WEBHOOK}" --job feature
#circleci local execute -c .circleci/config-2.0.yml --job develop
#circleci local execute -c .circleci/config-2.0.yml --job staging
#circleci local execute -c .circleci/config-2.0.yml --job master
