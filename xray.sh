#!/bin/sh
if [ ! -f UUID ]; then
  UUID="64ab60bd-71d4-4414-a00f-1e3e3b9dc089"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

