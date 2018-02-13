#!/bin/bash
set -ev
echo '>>> Now running shell script...'
npm i -g data-cli
data --version
data help
data info https://pkgstore.datahub.io/90998f7f90e086bd5fc7c9075dfda43b/basic-csv/comma-separated_csv/data/f4f7de54ccaaffa6ac0e5fe804653bf2/comma-separated_csv.csv

echo '>>> Install data-cli with yarn...'
npm uninstall -g data-cli
if [ $(uname) = 'Darwin' ]; then
  brew install yarn
else
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
  apt-get update && apt-get install yarn
fi

export PATH="$(yarn global bin):$PATH"
yarn global add data-cli
data --version
data info https://datahub.io/core/finance-vix
