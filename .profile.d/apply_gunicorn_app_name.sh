#!/bin/sh

GUNICORN_CONF="$HOME/.apt/etc/datadog-agent/conf.d/gunicorn.d/conf.yaml"

if [ -z "$GUNICORN_APP_NAME" ]; then
    echo "Need to set GUNICORN_APP_NAME"
    exit 1
fi

sed -i "s/YOUR_APP_NAME/$GUNICORN_APP_NAME/g" $GUNICORN_CONF
