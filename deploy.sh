#!/bin/bash

ssh-keyscan -t rsa -H 104.155.104.120 >> ~/.ssh/known_hosts
ssh -oStrictHostKeyChecking=no -i dd testuser@104.155.104.120 << EOF

pwd
ls
EOF
