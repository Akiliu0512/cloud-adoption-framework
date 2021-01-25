---
# This basic template provides core metadata fields for Markdown articles on docs.microsoft.com.

# Mandatory fields.
title: Enterprise Scale Analytics and AI 
description: Enterprise Scale Analytics and AI Architecture Business Continuity and Disaster Recovery.
author:
ms.author: # Microsoft employees only
ms.date: 12/8/2020
ms.topic: conceptual
ms.service: architecture-center
ms.subservice: enterprise-scale-analytics
# Use ms.service for services or ms.prod for on-prem products. Remove the # before the relevant field.
# ms.service: service-name-from-white-list
# ms.prod: product-name-from-white-list

# Optional fields. Don't forget to remove # if you need a field.
# ms.custom: can-be-multiple-comma-separated
# ms.reviewer: MSFT-alias-of-reviewer
# manager: MSFT-alias-of-manager-or-PM-counterpart
---

# Resiliency

When architecting any cloud service, you must consider your availability requirements and how to respond to potential interruptions in the service. An issue could be localized to the specific instance or even region-wide, so having a plan for both is important. Depending on the recovery time objective and the recovery point objective SLAs for your workload, you might choose an aggressive strategy for high availability and disaster recovery.

High availability (HA) and disaster recovery (DR) can sometimes be combined, although each has a slightly different strategy, especially when it comes to data. Microsoft have published guidance using under the [Microsoft Azure Well-Architected Framework](https://docs.microsoft.com/azure/architecture/framework/) and [Reliability Overview](https://docs.microsoft.com/azure/architecture/framework/resiliency/overview).

## Data Lake

Data Lake Storage Gen2 already handles 3x replication under the hood to guard against localized hardware failures. Additionally, other replication options, such as ZRS or GZRS, improve HA, while GRS & RA-GRS improve DR. When building a plan for HA, in the event of a service interruption the workload needs access to the latest data as quickly as possible by switching over to a separately replicated instance locally or in a new region.

If one of the Data Landing Zones requires geo-redundancy, with Data Lake Storage Gen2, it is recommended to geo-replicate your data via GRS or RA-GRS that satisfies your HA/DR requirements. Additionally, you should consider ways for the application using Data Lake Storage Gen2 to automatically fail over to the secondary region through monitoring triggers or length of failed attempts, or at least send a notification to admins for manual intervention. Keep in mind that there is trade-off of failing over versus waiting for a service to come back online.

Each entity must decide on the Recovery Point Objective for their Data Domain(s) and defined a replication strategy for their use cases.

## Azure Synapse Analytics

For an overview of business continuity with Azure Synapse Analytics see [High availability for Azure Synapse Analytics](https://docs.microsoft.com/azure/cloud-adoption-framework/migrate/azure-best-practices/analytics/azure-synapse).

## Azure Databricks

For an overview of a disaster recovery architecture useful for Azure Databricks clusters, and the steps to accomplish that design see [Regional disaster recovery for Azure Databricks clusters](https://docs.microsoft.com/azure/databricks/scenarios/howto-regional-disaster-recovery).

## Azure SQL Database

For an overview of business continuity with Azure SQL Database see [Overview of business continuity with Azure SQL Database](https://docs.microsoft.com/azure/azure-sql/database/business-continuity-high-availability-disaster-recover-hadr-overview).

## Azure Cosmos DB

For an overview of High Availability with Azure Cosmos DB see [How does Azure Cosmos DB provide high availability](https://docs.microsoft.com/azure/cosmos-db/high-availability).

## Azure Data Factory

As Data Domains and Data Product are likely to have Azure DevOps repositories linked to Azure Data Factory, it is possible to deploy pipelines to another Data Factory with minimal downtime.

## Azure Key Vault

Azure Key Vault automatically provides features to help you maintain availability and prevent data loss. Back up secrets ([Azure Key Vault Backup](https://docs.microsoft.com/azure/key-vault/general/backup)) only if you have a critical business justification. Backing up secrets in your key vault may introduce operational challenges such as maintaining multiple sets of logs, permissions, and backups when secrets expire or rotate.

Key Vault maintains availability in disaster scenarios and will automatically fail over requests to a paired region without any intervention from a user. For more information, see [Azure Key Vault availability and redundancy](./disaster-recovery-guidance.md).

>[!div class="step-by-step"]
>[Previous](../07-dataops/03-teamfunctions.md)
>[Next](../99-appendix/01-esaaipolicy.md)
