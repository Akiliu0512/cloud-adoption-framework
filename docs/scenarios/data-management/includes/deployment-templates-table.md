---
author: mboswell
ms.author: mboswell
ms.date: 06/21/2021
ms.topic: include
ms.service: cloud-adoption-framework
ms.subservice: scenario
ms.custom: e2e-data-management, think-tank
---

|Repository|Content|Required|Deployment model|
|-|-|-|-|
|[Data management template](https://github.com/Azure/data-management-zone)| Central data management services and shared data services, such as data catalog and self-hosted integration runtime | Yes | One per cloud-scale analytics |
|[Data landing zone template](https://github.com/Azure/data-landing-zone)| Data landing zone shared services, such as data storage, ingestion services, and management services | Yes | One per data landing zone |
|[Data integration template - batch processing](https://github.com/Azure/data-product-batch) | Additional services required for batch data processing | No | One or more per data landing zone |
|[Data integration template - stream processing](https://github.com/Azure/data-product-streaming) | Additional services required for processing data streams | No | One or more per data landing zone |
|[Data product template - analytics and data science](https://github.com/Azure/data-product-analytics)| Additional services required for data analytics and AI| No | One or more per data landing zone |
| | |

These templates contain not only Azure Resource Manager templates and their parameter files, but also CI/CD pipeline definitions for resource deployment.

The templates can change over time because of new Azure services and requirements. Secure the main branch of these repositories to ensure that it remains error-free and ready for consumption and deployment. Use a development subscription to test template configuration changes before you merge feature enhancements back into the main branch.
