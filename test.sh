#!/usr/bin/env bash
set -e

hosts=(
  'ryankoval.com'
  'www.ryankoval.com'
  'resume.ryankoval.com'
  'rooooney.ryankoval.com'
  'ryankoval.pizza'
  'www.ryankoval.pizza'
  'blog.ryankoval.com'
  'avatar.ryankoval.com'
  'bookmarks.ryankoval.com'
  'github.ryankoval.com'
  'twitter.ryankoval.com'
)

for host in "${hosts[@]}"; do
  set -x
  curl --silent -H "Host: $host" -L --fail centos >> /dev/null
  set +x
done
