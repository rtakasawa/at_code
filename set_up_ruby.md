## ruby初期設定
- https://qiita.com/Moo_Moo_Farm/items/909f1152b78c4da926dd
- https://qiita.com/Adaachill/items/3d4ddad56c5c2cc372cd
- http://tatamo.81.la/blog/2018/12/07/atcoder-cli-installation-guide/
- http://tatamo.81.la/blog/2018/12/07/atcoder-cli-tutorial/

### コマンド
#### コンテスト用のディレクトリを作る
`acc new "contestID"`

#### コンテスト用のディレクトリを作る
提出コードはmain.rbに作る

#### 事前テスト
`# pwd => __/atcoder/abc101/a の場合`\
`$ oj t -c " ruby main.rb" -d tests`

#### 提出
`# 方法１`\
`# pwd => __/atcoder/abc101/`\
`$ acc submit -t abc101_a ./a/main.rb`

`# 方法２`\
`# pwd => __/atcoder/abc101/a`\
`$ acc submit main.rb`

`# 方法３( 方法２の省略 )`\
`$ acc s`
