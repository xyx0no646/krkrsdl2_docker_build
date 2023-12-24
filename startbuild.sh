export REPO_URL="https://github.com/krkrsdl2/krkrsdl2.git"
export DIR="./krkrsdl2"
if [ -d "$DIR" ]; then
    # ディレクトリが存在し、空でないかを確認
    if [ "$(ls -A $DIR)" ]; then
        echo "git pullを実行"
        # ディレクトリに移動し、git pullを実行
        cd $DIR && git pull && cd ..
    else
        echo "git cloneを実行"
        # git cloneを実行
        git clone --recursive $REPO_URL $DIR
    fi
else
    echo "git cloneを実行"
    # ディレクトリが存在しない場合、git cloneを実行
    git clone --recursive $REPO_URL $DIR
fi
docker-compose build
docker-compose up