#!/bin/sh

THIS_FILE_PATH=$(
  cd $(dirname $0)
  pwd
)
source "$THIS_FILE_PATH/index.sh"

function eq() {
  if [ "$1" = "a" ]; then
    echo "true"
  else
    echo "false"
  fi
}
function test() {
  local fn=
  local expectValue=
  local ouput=
  fn=${1}
  ouput=$(eval "$fn")
  expectValue=${2}
  echo "test:$fn"
  if [ "$ouput" = "$expectValue" ]; then
    echo "it is ok"
  else
    echo "it is false.expect $ouput = $expectValue"
  fi
}

echo "test-创建字符"
echo "test-创建字符-默认名字："
str_set
#echo "$c93bae"
echo "test-创建字符-传入名字："
str_set "name"
#echo "$name"
echo "test-创建字符-传入名字、取值："
str_set "name" "  yemiancheng  "
#echo "$name"

echo "test-读取字符"
echo "test-读取字符-字符长度："
str_length "name"
echo "test-读取字符-返回某一位置的字符："
str_char_at "name" "7"
echo "test-读取字符-返回某一位置的asii值："
str_charcode_at "name" "7"
echo "test-读取字符-返回某一位置的nicode值："
str_unicode_at "name" "7"
echo "test-读取字符-返回某一字符的开始位置："
str_index_of "name" "n"
echo "test-读取字符-返回某一字符的结尾位置："
str_last_index_of "name" "n"

echo "test-修改字符"
echo "test-修改字符-去除首位空格："
str_trim "name"
str_length "name"
echo "test-修改字符-截取字符："
echo "test-修改字符-截取字符-传入开始位置："
str_slice "name" "1"
echo "test-修改字符-截取字符-传入开始位置、结束位置："
str_slice "name" "1" "5"
echo "test-修改字符-截取字符-传入开始位置、结束位置、新的变量："
str_slice "name" "1" "4" "a"
echo "$a"

echo "test-修改字符-通过asii值生成："
str_from_charcode "name" "121"
#echo "test-修改字符-通过unicode值生成："
#str_from_unicode "name" "\\u006e\\u000a"

echo "test-修改字符-替换-一次："
str_replace "name" "cheng" "cong"
echo "test-修改字符-替换-所有："
str_replace "name" "n" "m" "g"
echo "test-修改字符-分割："
str_split "name" "m" "h"
echo "${h[0]}"
## file-usage
# ./src/test.sh
