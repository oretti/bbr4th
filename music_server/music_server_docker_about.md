music_server
============

これについて
----------

bemuse用のmusic serverのdockerです
※bbr4用にカスタマイズが入る場合変更を行う予定


起動
----

以下で起動できます

~~~

sudo docker build -t bbr4-music-server ./
#bemuse配下に展開済みのbmsファイルを配置後以下を実行
sudo docker run -v `pwd`/bemuse:/var/www/bemuse -w /var/www/bemuse bbr4-music-server pack_and_index
sudo docker run -d -p 8081:80 -v `pwd`/bemuse:/var/www/bemuse  --name music-server bbr4-music-server
#http://bemuseのurl/?server=http://localhost:8081 で参照できます

#サーバーの停止s
sudo docker -f rm music-server

~~~

楽曲のフォルダの構成
---------

bmsフォルダは以下のように配置してください

~~~

bemuse
├── index.cache #pack_and_index実行後生成
├── index.json　#pack_and_index実行後生成
└── [song_title]/　#bmsフォルダを配置してください
    ├── bms1.bme
    ├── bms2.bml
    └── assets/　#pack_and_index実行後生成
        ├── metadata.json
        └── (something).bemuse

~~~

利用について
-----------

bemuseの利用方法と変更ありません

bemuseの起動時に以下のような設定を入れます。
