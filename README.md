# krkrsdl2_docker_build
Windows版/Web版 吉里吉里SDL2をDockerでビルドするためのDocker-Composeファイル

## 使い方

gitおよびDocker DesktopもしくはDocker/Docker-composeがインストールされていること

### (共通)リポジトリをクローンする

>git clone --recursive https://github.com/xyx0no646/krkrsdl2_docker_build.git
>cd krkrsdl2_docker_build

### (共通)Dockerコンテナを準備する
>docker-compose build

失敗した場合はsudoをつけてください

>sudo docker-compose build

### ビルド
ビルドしたいターゲットを指定してください。

- すべてビルドする

>docker-compose up

- Windows版のみビルドする

>docker-compose up windows

build/buildWindows/tpvwin32.exeがビルド済みのファイルです

- Web版のみビルドする

>docker-compose up web

build/buildWeb以下の

- index.html
- krkrsdl2.wasm
- krkrsdl2.js

がビルド済みのファイルです