# vuls-installer

## Usage

### Goのインストール

goenvを利用していると楽。

```
$ goenv install 1.14.0
$ goenv global 1.14.0
$ go version
go version go1.14 darwin/amd64

$ source ~/.zshrc
```

### vulsの関連パッケージインストール

```
$ sh ./vuls-installer.sh
```

### 脆弱性辞書のダウンロード

```
$ sh ./fetch-vuln-dictionaries.sh
```

## 公式ドキュメント  
https://vuls.io/

## Github  
https://github.com/future-architect/vuls

## 参考
そもそもVulsとは？というOverviewは以下にコンパクトにまとまっている  
https://www.ossnews.jp/oss_info/Vuls

開発者インタビュー記事はこちら  
https://thinkit.co.jp/article/10092

## 周辺ソフトウェア  
- VulsRepo ・・・ WebUI
- FutureVuls ・・・ Vulsで検知した脆弱性をいい感じに管理できるツール
