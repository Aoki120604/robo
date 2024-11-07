#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Andou Aoki
# SPDX-LICENSE-Identifier: BSD-3-clause
ng (){
       echo ${1}行目が違うよ
       res=1
}

res=0

## 正常動作　##
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

## 移乗動作 ##
out=$(echo あ | ./plus)
[ "$?" = 1 ]       || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" = 1] || ng "$LINENO"
[ "${out}" = ""] || ng "$LINENO"

[ "${res}" = "" ]||ng "$LINENO"
exit "$res"
