# adfbuild2018

This document will explain how to understand, use and deploy the demo assets within this repo. It is intended to provide a demo environment for Azure Data Factory (ADF) to load data from flat files in Azure Blob and Amazon AWS as well as REST API into Azure Data Warehouse with a series of data transformation activities. These assets are the demo content from the Microsoft Build 2018 Conference in Seattle for this session: Develop scalable analytical solutions with Azure Data Factory & Azure SQL Data Warehouse.

The theme of the demo is building a scalable water analytics solution for Azure SQL Data Warehouse that can identify areas in the US that are at risk of water shortages due to drought, weather patterns and other factors.

## ARM Template

The ARM Template JSON and associated ARM Template Parameters JSON files contain the Azure Data Factory that I built and used at the Build conference. To install this factory, deploy the template with the parameters file to Azure [with these instructions](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-deploy).

In that factory you will see a series of ADF objects:

### Pipelines

* Water Demo Pipeline TEMPLATE

This is the template used to create the other related water demo pipelines that use the same structure.

* Water Demo Pipeline MAIN

This is the primary sequential data loader and data transformation pipeline that you will use in this demo. It will sequentially acquire data from different sources: Blob, AWS, REST API and land it in Azure Blob, then transform it using Azure Databricks Notebooks and Azure SQL DW stored procedures, then load Azure SQL Data Warehouse. At the end of the pipeline, either a Success or a Failure email will be sent.

* Water Demo with Params

A copy of the Water Demo pipeline that includes parameters set in the pipeline and used in the Datasets as a way to dynamically set the files & folders that you will load. It also demonstrates that the activities in the pipeline do not need to depend on each other in a sequential manner. You can also execute activities in a parallel manner.

* Water Pipeline Loops

The pipelines in this demo Azure Data Factory are primarily for demo purposes and for trying out features. But when you actually operationalize a production factory, you will build pipelines with parameters and loops. That makes your pipelines much more flexible re-usable. This pipeline shows how to use a loop for a load activity.

## Databricks_Scala_Notebook

This is the Notebook code for the Azure Databricks activity in the water pipelines that bucketizes (groups) data using SparkSQL inside a very simple Spark Scala script. You will need to put this code inside an Azure Databricks activity on your cluster to get the end-to-end pipeline to actually work.

## adfbuild2018script.sql

This SQL script contains the database schema contents (tables & stored procs) that are used in this demo. Stand-up an Azure SQL Data Warehouse and then execute this script file from SSMS connected to your Azure SQL DW database. It will create the tables that are loaded in the pipeline as well as the sprocs that are called from the stored proc activities.

