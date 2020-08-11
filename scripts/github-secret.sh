az ad sp create-for-rbac --name "RepoAngularConfig" --role contributor \
  --scopes /subscriptions/$SUBSCRIPTION_ID/resourceGroups/$RG_NAME \
  --sdk-auth