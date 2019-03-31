#!/bin/sh
circleci config process .circleci/config.yml > .circleci/config-2.0.yml
circleci local execute -c .circleci/config-2.0.yml -e DISCORD_WEBHOOK=$DISCORD_WEBHOOK --job lint
circleci local execute -c .circleci/config-2.0.yml -e DISCORD_WEBHOOK=$DISCORD_WEBHOOK --job run_test_light
circleci local execute -c .circleci/config-2.0.yml -e DISCORD_WEBHOOK=$DISCORD_WEBHOOK --job merge_coverage_light
circleci local execute -c .circleci/config-2.0.yml -e DISCORD_WEBHOOK=$DISCORD_WEBHOOK --job upseart_pullrequest
