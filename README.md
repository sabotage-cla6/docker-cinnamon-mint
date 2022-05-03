# docker-cinnamon-mint

## What is docker-cinnamon-mint

docker-cinnamon-mint は、コンテナ上でLinux Mintを立ち上げ、
リモートデスクトップ接続して利用するためのイメージです。

![image](https://user-images.githubusercontent.com/12976488/166152739-c0b51d54-af63-4a8d-bd1c-100f50020b3c.png)

## How to use

下記コマンドを実行します。

### コンテナイメージのビルド

Linux Mint20.3のファイルシステムをtarで固めて、GitHubにあげようと思ってましたが
サイズが大きすぎて上げることができませんでした。
下記の方法でBaseで作成使用するファイルイメージを固める事ができます。

- VMWare上にLinuxMintをインストールする
- インストールした仮想マシンのディスクをマウントする
- 上記をtarで固める

### コンテナの立ち上げ方

```
cd ./xrdp
sudo docker-compose up
```

### コンテナへの接続

10.10.1.51:10001へのRDP接続

