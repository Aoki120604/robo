#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Andou Aoki
# SPDX-License-Identifier: BSD-3-Clause

ng() {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# 正常動作テスト
out=$(echo -e "3 + 4\nexit" | python3 calculator_with_variable.py | grep -E "結果:|エラー:")
echo "${out}" | grep -q "結果: 7" || ng "$LINENO"

# 前回の結果（N）を使用するテスト
out=$(echo -e "3 + 4\nN * 2\nexit" | python3 calculator_with_variable.py | grep -E "結果:|エラー:")
echo "${out}" | grep -q "結果: 14" || ng "$LINENO"

# 無効な入力のテスト
out=$(echo -e "3 / 0\nexit" | python3 calculator_with_variable.py | grep -E "結果:|エラー:")
echo "${out}" | grep -q "エラー: 無効な入力" || ng "$LINENO"
# 無効な記号のテスト
out=$(echo -e "3 & 4\nexit" | python3 calculator_with_variable.py)
echo "${out}" | grep -q "エラー: 無効な入力" || ng "$LINENO"

# 空の入力のテスト
out=$(echo -e "\nexit" | python3 calculator_with_variable.py)
echo "${out}" | grep -q "エラー: 無効な入力" || ng "$LINENO"

[ "${res}" = 0 ] && echo "OK"
exit "${res}"
