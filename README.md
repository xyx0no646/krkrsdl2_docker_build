# krkrsdl2_docker_build
Windows版/Web版 吉里吉里SDL2をDockerでビルドするためのDocker-Composeファイル

## 使い方

### (共通)吉里吉里SDL2をクローンする
>git clone --recursive https://github.com/krkrsdl2/krkrsdl2.git

### (共通)Dockerコンテナを準備する
>docker-compose build

失敗した場合はsudoをつけてください

>sudo docker-compose build

### ビルドターゲット
ビルドしたいターゲットを指定してください。

- すべてビルドする

>docker-compose up

- Windows版のみビルドする

>docker-compose up windows

- Web版のみビルドする

>docker-compose up web