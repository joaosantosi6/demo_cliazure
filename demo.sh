#!/bin/bash

# sudo apt-get install azure-cli
# az extension add --name azure-devops
# az login
PAT=$AZURE_DEVOPS_PAT

# URL da organização e nome do projeto
ORGANIZATION_URL="https://dev.azure.com/your-organization"
PROJECT_NAME="your-project"

# Configurar o PAT para o Azure DevOps CLI
echo $PAT | az devops login --organization $ORGANIZATION_URL
export organization=joaosantos0209
export project=Teste_cli
az devops configure --defaults organization=https://dev.azure.com/${organization} project=${project}
az boards work-item create --title "Novo Epic" --type "Epic" --description "Este é um novo Epic criado usando CLI"
