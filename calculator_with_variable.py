def calculator():
    import re
    print("四則演算プログラム")
    print("以下の形式で入力してください：")
    print("数字 計算記号 数字（例: 3 + 4）")
    print("前回の結果を使う場合は 'N' を使用してください（例: N + 5）")
    print("終了する場合 'exit' と入力")

    N = 0

    while True:
        user_input = input("計算式を入力: ").strip()
        if user_input.lower() == 'exit':
            print("プログラムを終了")
            break
        
        if not user_input:
            print("エラー: 無効な入力 (空の入力)")
            continue

        user_input = user_input.replace('N', str(N))

        # 正規表現で安全性を確認
        if not re.match(r'^[0-9+\-*/.\sN]+$', user_input):
            print("エラー: 無効な入力")
            continue

        try:
            result = eval(user_input)
            N = result
            print(f"結果: {result}")
        except ZeroDivisionError:
            print("エラー: 無効な入力 (division by zero)")
        except Exception as e:
            print(f"エラー: 無効な入力 ({e})")

if __name__ == "__main__":
    calculator()
