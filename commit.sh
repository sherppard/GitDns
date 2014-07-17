#!/bin/sh --login -i
cd /d/dns/GitDns
git add hosts
git commit -m 'ip have been changed'
git push origin dev
