#!/bin/sh
circleci config process .circleci/config.yml > .circleci/config-2.0.yml
circleci local execute -c .circleci/config-2.0.yml --job alpha
circleci local execute -c .circleci/config-2.0.yml --job beta
