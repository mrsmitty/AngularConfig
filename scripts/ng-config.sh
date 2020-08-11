#!/bin/sh

printenv | grep "^NG_" | sed -E 's/([^=]+)=(.*)/"\1": "\2"/' > "$DEPLOYMENT_TARGET/runtime.json"
sed -i -e '$a}' "$DEPLOYMENT_TARGET/runtime.json"
sed -i '1 i\{' "$DEPLOYMENT_TARGET/runtime.json"
