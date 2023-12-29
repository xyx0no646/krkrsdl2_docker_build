# krkrsdl2_docker_build
Windows版/Web版 吉里吉里SDL2をDockerでビルドするためのDocker-Composeファイル

## TL;DR

```bash
git clone --recursive https://github.com/xyx0no646/krkrsdl2_docker_build.git
cd krkrsdl2_docker_build
docker compose up
ls build
```

## 使い方

gitおよびDocker/Docker-composeがインストールされていること

### (共通)リポジトリをクローンする

```bash
git clone --recursive https://github.com/xyx0no646/krkrsdl2_docker_build.git
cd krkrsdl2_docker_build
```

### (共通)Dockerコンテナをビルドする
```bash
docker-compose build
```

失敗した場合はsudoをつけてください

```bash
sudo docker-compose build
```

### ビルド
お好みでkrkrsdl2フォルダをいじった後、ビルドしたいターゲットを指定してください。

#### すべてビルドする

```bash
docker-compose up
```
#### Windows版のみビルドする

```bash
docker-compose up windows
```

build/buildWindows/tpvwin32.exeがビルド済みのファイルです

#### Web版のみビルドする

```bash
docker-compose up web
```

build/buildWeb以下の

- index.html
- krkrsdl2.wasm
- krkrsdl2.js

がビルド済みのファイルです
