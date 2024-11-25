# calculator_with_variable.py
# SPDX-FileCopyrightText: 2024 Andou Aoki
# SPDX-LICENSE-Identifier: BSD-3-Clause
# import sys

def calculator():
    print("四則演算プログラム")
    print("以下の形式で入力してください：")
    print("数字 計算記号 数字（例: 3 + 4）")
    print("前回の結果を使う場合は 'N' を使用してください（例: N + 5）")
    print("終了する場合 'exit' と入力")

    N = 0

    while True:
        # 対話型か非対話型かを判別
        if sys.stdin.isatty():
            user_input = input("計算式を入力: ")
        else:
            user_input = sys.stdin.readline().strip()

        if not user_input:
            continue

        if user_input.lower() == 'exit':
            print("プログラムを終了")
            break

        user_input = user_input.replace('N', str(N))

        try:
            result = eval(user_input)
            N = result
            print(f"結果: {result}")
        except Exception as e:
            print(f"エラー: 無効な入力 ({e})")

if __name__ == "__main__":
    calculator()
