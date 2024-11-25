#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Andou Aoki
# SPDX-License-Identifier: BSD-3-Clause

ng() {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# 正常動作テスト
# 入力: "3 + 4" -> 出力: "結果: 7"
out=$(echo -e "3 + 4\nexit" | python3 calculator_with_variable.py)
echo "${out}" | grep -q "結果: 7" || ng "$LINENO"

# 前回の結果（N）を使用するテスト
# 入力: "3 + 4", "N * 2" -> 出力: "結果: 7", "結果: 14"
out=$(echo -e "3 + 4\nN * 2\nexit" | python3 calculator_with_variable.py)
echo "${out}" | grep -q "結果: 14" || ng "$LINENO"

# 無効な入力のテスト
# 入力: "3 / 0" -> 出力: "エラー: 無効な入力"
out=$(echo -e "3 / 0\nexit" | python3 calculator_with_variable.py)
echo "${out}" | grep -q "エラー: 無効な入力" || ng "$LINENO"

# 無効な記号のテスト
# 入力: "3 & 4" -> 出力: "エラー: 無効な入力"
out=$(echo -e "3 & 4\nexit" | python3 calculator_with_variable.py)
echo "${out}" | grep -q "エラー: 無効な入力" || ng "$LINENO"

# 空の入力のテスト
# 入力: "" -> 出力: "エラー: 無効な入力"
out=$(echo -e "\nexit" | python3 calculator_with_variable.py)
echo "${out}" | grep -q "エラー: 無効な入力" || ng "$LINENO"

# 最終結果
[ "${res}" = 0 ] && echo "OK"
exit "${res}"
