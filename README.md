# kadai1コマンド
![test](https://github.com/Aoki120604/robosys2024/actions/workflows/test.yml/badge.svg)

四則演算を実行するプログラム
## 必要なソフトウエア
・python(テスト済みバージョン：3.7~3.11)
## 実行方法
~~~
git clone git@github.com:Aoki120604/robosys2024.git
~~~
を入力
/tmp/robosys2024のリポジトリで
~~~
./kadai1.py
~~~
## 実行結果
実行後以下のような文章がでてくるので計算したい式を代入
~~~
四則演算プログラム
以下の形式で入力してください：
数字 計算記号 数字（例: 3 + 4）
前回の結果を使う場合は 'N' を使用してください（例: N + 5）
終了する場合 'exit' と入力
計算式を入力:
~~~
計算内容を演算子とともに入力（例５＋６等）
直前の計算結果を用いる場合はNを入力
終了する場合exitと入力
## テスト環境
・ubuntu23.04
## 参考資料
四則演算プログラム・・https://blog.newtum.com/create-calculator-using-eval-in-python/
電卓関数について・・https://naowalrahman.rocks/calc/

テスト実行・・ロボットシステム学11/7スライド　https://ryuichiueda.github.io/slides_marp/robosys2024/lesson7.html#14
## ライセンス
・このソフトウェアパッケージは，3条項BSDライセンスの下、再頒布および使用が許可されます
・このパッケージのコードの一部は、（CC-BY－SA 4.0 by Ryuichi Ueda)のものを、本人の許可を得て自身の著作としたものです
https://github.com/ryuichiueda/my_slides/tree/master/robosys_2024
・©　2024　Aoki Andou 


