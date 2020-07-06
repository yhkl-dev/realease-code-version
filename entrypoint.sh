#!/bin/bash


echo "get master code"
cd ${MASTER_CODE_FOLDER}
hub checkout master

cd ../${BRANCH_CODE_FOLDER}
hub checkout ${BRANCH_NAME}

cp ../${MASTER_CODE_FOLDER}/src/pages/map src/pages/ -r 

hub commit -m "update code from master"

git push origin ${BRANCH_NAME}





