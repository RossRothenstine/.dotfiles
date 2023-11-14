#!/usr/bin/env bash

echo "Git Username: "
read username

echo "Git Email: "
read email

git config --global user.name $username
git config --global user.email $email
