#! /usr/bin/bash

for x in $@
do
    name=$x
done

npx create-react-app $name
cd ./$name

npm install axios
npm install json-server
npm install -g json

touch db.jsonn
json -I -f package.json -e "this.scripts.server=\"npx json-server --port=3001 --watch db.json\""

