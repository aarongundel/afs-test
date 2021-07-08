# check for abitrary file to determine appropriate submodule pull
FILE=./afs/manage.py
if [ -f "$FILE" ]; then
    git submodule update --init --recursive
else
    git submodule update --recursive --remote
fi

cd afs
docker compose build
docker compose up