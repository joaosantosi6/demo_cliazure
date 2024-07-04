#!/bin/bash

# sudo apt-get install azure-cli
# az extension add --name azure-devops
# az login

PAT=$AZURE_DEVOPS_PAT

export organization=joaosantos0209
export project=Teste_cli
ORGANIZATION_URL="https://dev.azure.com/${organization}"

echo $PAT | az devops login --organization $ORGANIZATION_URL

az devops configure --defaults organization=https://dev.azure.com/${organization} project=${project}
az boards query --wiql @query.wiql > epics.json
