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

## QuickStart for Vuls

### 設定ファイルを作成

vulsコマンドを実行する場所と同一ディレクトリであればどこに作成しても良い。  

```
[servers]
[servers.myserver]
host         = "myserver.com"
port        = "22"
user        = "taji"
keyPath     = "/Users/taji/.ssh/id_rsa"
```

### 設定ファイルのテスト(サーバの疎通確認)

```
$ vuls configtest myserver
[Jun  1 10:49:16]  INFO [localhost] Validating config...
[Jun  1 10:49:16]  INFO [localhost] Detecting Server/Container OS...
[Jun  1 10:49:16]  INFO [localhost] Detecting OS of servers...
Enter passphrase for key '/Users/taji/.ssh/id_rsa':
[Jun  1 10:49:20]  INFO [localhost] (1/1) Detected: myserver: centos 6.7
[Jun  1 10:49:20]  INFO [localhost] Detecting OS of containers...
[Jun  1 10:49:20]  INFO [localhost] Checking Scan Modes...
[Jun  1 10:49:20]  INFO [localhost] Checking dependencies...
[Jun  1 10:49:20]  INFO [myserver] Dependencies ... Pass
[Jun  1 10:49:20]  INFO [localhost] Checking sudo settings...
[Jun  1 10:49:20]  INFO [myserver] Sudo... Pass
[Jun  1 10:49:20]  INFO [localhost] It can be scanned with fast scan mode even if warn or err messages are displayed due to lack of dependent packages or sudo settings in fast-root or deep scan mode
[Jun  1 10:49:20]  INFO [localhost] Scannable servers are below...
myserver
```

### スキャン実行

```
$ vuls scan myserver
[Jun  1 10:51:18]  INFO [localhost] Start scanning
[Jun  1 10:51:18]  INFO [localhost] config: /Users/taji/IdeaProjects/vuls-installer/config.toml
[Jun  1 10:51:18]  INFO [localhost] Validating config...
[Jun  1 10:51:18]  INFO [localhost] Detecting Server/Container OS...
[Jun  1 10:51:18]  INFO [localhost] Detecting OS of servers...
[Jun  1 10:51:18]  INFO [localhost] (1/1) Detected: myserver: centos 6.7
[Jun  1 10:51:18]  INFO [localhost] Detecting OS of containers...
[Jun  1 10:51:18]  INFO [localhost] Checking Scan Modes...
[Jun  1 10:51:18]  INFO [localhost] Detecting Platforms...
[Jun  1 10:51:19]  INFO [localhost] (1/1) myserver is running on other
[Jun  1 10:51:19]  INFO [localhost] Detecting IPS identifiers...
[Jun  1 10:51:19]  INFO [localhost] (1/1) myserver has 0 IPS integration
[Jun  1 10:51:19]  INFO [localhost] Scanning vulnerabilities...
[Jun  1 10:51:19]  INFO [localhost] Scanning vulnerable OS packages...
[Jun  1 10:51:19]  INFO [myserver] Scanning in fast mode
One Line Summary
================
myserver      centos6.7       621 installed, 273 updatable
To view the detail, vuls tui is useful.
To send a report, run vuls report -h.
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
