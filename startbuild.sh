export REPO_URL="https://github.com/krkrsdl2/krkrsdl2.git"
export DIR="./krkrsdl2"
if [ -d "$DIR" ]; then
    if [ "$(ls -A $DIR)" ]; then
        cd $DIR && git pull && cd ..
    else
        git clone --recursive $REPO_URL $DIR
    fi
else
    git clone --recursive $REPO_URL $DIR
fi
docker-compose build
docker-compose up