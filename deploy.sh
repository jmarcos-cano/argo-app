#!/bin/bash


FOLDER=${1}

if [[ ! -d $FOLDER ]];then
    echo "You must enter a folder!"
    exit
fi

FOLDER=$(echo $FOLDER |tr -d "/" )

: ${APP_NAME:=${FOLDER}}

: ${DEST_SERVER:="https://35.225.167.14"}
: ${REPO:="https://github.com/jmarcos-cano/argo-app.git"}


echo "argocd app create ${APP_NAME} \
    --dest-namespace default \
    --dest-server ${DEST_SERVER} \
    --repo ${REPO} \
    --path ${APP_NAME}"
exit


argocd app create ${APP_NAME} \
    --dest-namespace default \
    --dest-server ${DEST_SERVER} \
    --repo ${REPO} \
    --path ${APP_NAME}

argocd app sync ${APP_NAME}