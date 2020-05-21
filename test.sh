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
  'linkedin.ryankoval.com'
  'twitter.ryankoval.com'
)

set -x
for host in "${hosts[@]}"; do
  curl -H "Host: $host" -L --fail centos
done
