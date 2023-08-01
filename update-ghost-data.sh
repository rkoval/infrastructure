#!/usr/bin/env bash
set -e

tarball_name='local-ghost-data.tar.gz'

rm -f $tarball_name
tar -zvcf $tarball_name ghost-data
scp $tarball_name centos:/Users/ryankoval/workspace/infrastructure/
ssh centos -t "cd /Users/ryankoval/workspace/infrastructure && tar -xvzf $tarball_name && docker compose restart ghost"

echo '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
echo 'YOU MUST NOW REUPLOAD THE BLOGINN THEME TO GHOST'
echo '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
