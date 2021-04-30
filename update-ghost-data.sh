#!/usr/bin/env bash
set -e

tarball_name='local-ghost-data.tar.gz'

rm -f $tarball_name
tar -zvcf $tarball_name ghost-data
scp $tarball_name centos:/Users/ryankoval/workspace/personal/infrastructure/
ssh centos -t "cd /Users/ryankoval/workspace/personal/infrastructure && tar -xvzf $tarball_name && docker restart infrastructure_ghost_1"

echo '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
echo 'YOU MUST NOW REUPLOAD THE BLOGINN THEME TO GHOST'
echo '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
