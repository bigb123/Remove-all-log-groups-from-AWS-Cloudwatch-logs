#!/usr/bin/env bash

for a in $(aws logs describe-log-groups --query "logGroups[].logGroupName" --output text); do aws logs delete-log-group --log-group-name $a; done
