#!/bin/bash
set -ev
echo '>>> Now running shell script...'
npm i -g data-cli
data --version
data help
data info https://pkgstore.datahub.io/90998f7f90e086bd5fc7c9075dfda43b/basic-csv/comma-separated_csv/data/f4f7de54ccaaffa6ac0e5fe804653bf2/comma-separated_csv.csv

echo '>>> Install data-cli with yarn...'
npm uninstall -g data-cli
npm i -g yarn
yarn global add data-cli
data --version
data-cli --version
