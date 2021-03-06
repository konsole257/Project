#!/bin/sh

echo ""
echo -e '\E[00;31m'"\033[1m/************************************\033[0m"
echo ""
echo -e '\E[00;31m'"\033[1m      npm & gulp setting\033[0m"
echo ""
echo -e '\E[00;31m'"\033[1m************************************/\033[0m"
echo ""
npm init -y
npm i gulp@3.9.1 --save-dev
npm i gulp-webserver --save-dev
npm i del --save-dev
npm i gulp-concat --save-dev
npm i gulp-imagemin --save-dev
npm i gulp-watch --save-dev
npm i gulp-sass --save-dev
npm i gulp-sass-glob --save-dev
npm i gulp-file-include --save-dev
npm i gulp-replace --save-dev
npm i gulp-vue-single-file-component --save-dev
npm i gulp-accessibility --save-dev
npm i gulp-beautify --save-dev

echo ""
echo -e '\E[00;31m'"\033[1m/************************************\033[0m"
echo ""
echo -e '\E[00;31m'"\033[1m      WorkSpace\033[0m"
echo ""
echo -e '\E[00;31m'"\033[1m************************************/\033[0m"
echo ""

path=$0
dir=${path%_*}

cd ${dir}

mkdir public
mkdir public/src

echo ""
echo -e '\E[00;31m'"\033[1m/************************************\033[0m"
echo ""
echo -e '\E[00;31m'"\033[1m      완료\033[0m"
echo ""
echo -e '\E[00;31m'"\033[1m************************************/\033[0m"
echo ""

exit 0
