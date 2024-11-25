#!/bin/bash -xv
# SPDX-FileCopyrightTest: 2024 Andou Aoki
# SPDX-License-Identifier: BSD-3-clause
ng (){
       echo ${1}行目が違うよ
       res=1
}

res=0

## 正常動作　##
out=$(seq 5 | ./kadai1)
[ "${out}" = 15 ]  || ng "$LINENO"

## 移乗動作 ##
out=$(echo あ | ./kadai1)
[ "$?" = 1 ]       || ng "$LINENO"
[ "${out}" = "" ]  || ng "$LINENO"

out=$(echo | ./kadai1)
[ "$?" = 1 ]        || ng "$LINENO"
[ "${out}" = "" ]   || ng "$LINENO"

[ "${res}" = 0 ]  && echo OK
exit "$res"
