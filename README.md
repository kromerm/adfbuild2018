# adfbuild2018

This document will explain how to understand, use and deploy the demo assets within this repo. It is intended to provide a demo environment for Azure Data Factory (ADF) to load data from flat files in Azure Blob and Amazon AWS as well as REST API into Azure Data Warehouse with a series of data transformation activities. These assets are the demo content from the Microsoft Build 2018 Conference in Seattle for this session: Develop scalable analytical solutions with Azure Data Factory & Azure SQL Data Warehouse.

The theme of the demo is building a scalable water analytics solution for Azure SQL Data Warehouse that can identify areas in the US that are at risk of water shortages due to drought, weather patterns and other factors.

## ARM Template

The ARM Template JSON and associated ARM Template Parameters JSON files contain the Azure Data Factory that I built and used at the Build conference. To install this factory, deploy the template with the parameters file to Azure [with these instructions](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-deploy).

In that factory you will see a series of ADF objects:

### Pipelines

* Water Demo Pipeline TEMPLATE

This is the template used to create the other related water demo pipelines that use the same structure.
