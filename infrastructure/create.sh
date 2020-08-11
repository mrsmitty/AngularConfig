az group create -n $RG_NAME -l $RG_LOCATION

az appservice plan create --name $APP_SERVICE_NAME \
                          --resource-group $RG_NAME \
                          --location $RG_LOCATION \
                          --is-linux --sku "B1"

az webapp create --name $WEB_BE_NAME \
                 --plan $APP_SERVICE_NAME \
                 --resource-group $RG_NAME \
                 --runtime "DOTNETCORE|3.1"

az webapp create --name $WEB_FE_NAME \
                 --plan $APP_SERVICE_NAME \
                 --resource-group $RG_NAME \
                 --runtime $NODE_VERSION