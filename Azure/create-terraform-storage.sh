#!/bin/sh

RESOURCE_GROUP_NAME="devopstamops-rg"
STORAGE_ACCOUNT_NAME="badmusdevopstaway"

# Create Resource Group
az group create -l eastus -n $RESOURCE_GROUP_NAME

# Create Storage Account
az storage account create -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME -l eastus --sku Standard_LRS

# Create Storage Account blob
az storage container create  --name tfstate --account-name $STORAGE_ACCOUNT_NAME