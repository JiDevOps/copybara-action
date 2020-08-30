#!/usr/bin/env sh

set -e

mkdir ~/.ssh
echo $INPUT_SSH_KEY > ~/.ssh/id_rsa
echo $INPUT_KNOWN_HOSTS > ~/.ssh/known_hosts

git config --global user.name $INPUT_GIT_NAME
git config --global user.email $INPUT_GIT_EMAIL

docker pull sharelatex/copybara:latest

cat ~/.ssh/id_rsa
cat ~/.ssh/known_hosts
cat ~/.gitconfig

docker run -v ~/.ssh:/root/.ssh -v ~/.gitconfig:/root/.gitconfig -v "$(pwd)":/usr/src/app -i sharelatex/copybara copybara
