#!/usr/bin/env bash
set -e
if [[ "$1" != "" ]]; then
  TAGS="--tags=$1"
  shift
fi
ANSIBLE_CONFIG=./ansible.cfg ansible-playbook -i hosts_local.yml playbook.yml $TAGS --vault-password-file=".pass" $@