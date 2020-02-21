FOLDER=${1}

if [[ ! -d $FOLDER ]];then
    echo "You must enter a folder!"
    exit
fi

FOLDER=$(echo $FOLDER |tr -d "/" )

: ${APP_NAME:=${FOLDER}}

: ${DEST_SERVER:="https://35.225.167.14"}


argocd app delete ${APP_NAME}

argocd app wait ${APP_NAME}