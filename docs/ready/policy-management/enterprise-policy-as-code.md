---
title: Advanced Azure Policy management
description: Improve policy management using Enterprise Policy As Code.
author: anwather
ms.author: anwather
ms.date: 10/26/2023
ms.topic: conceptual
ms.custom: internal
---

# Advanced Azure Policy management

Policy driven governance is one of the design principles for Azure landing zones (ALZ) to ensure applications you deploy comply with your organization's platform. The management of policy objects across an environment can take considerable effort to test and maintain to ensure this compliance is met. [Azure landing zone accelerators](https://aka.ms/alz/aac) establish a secure baseline and your organization may have further requirements to enhance compliance through deployment of other policies. This article provides a way to manage Azure Policy at scale using infrastructure as code.

## What is Enterprise Policy As Code (EPAC)

[Enterprise Policy as Code](https://aka.ms/epac) (EPAC) is an open source project designed to manage Azure Policy using infrastructure as code, built upon a PowerShell module published to the PowerShell Gallery. It contains a set of features designed to enhance the policy management experience including:
- A stateful policy deployment experience. The objects defined in the code become the source of truth for policy objects deployed in Azure.
- Complex policy management scenarios such as multitenant and sovereign cloud deployments.
- Incorporating existing time spent developing custom policies prior to Azure landing zone deployment by exporting and integrating policies. 
- Creating and managing policy exemptions and policy documentation.
- Sample workflows to demonstrate Azure Poliy deployment using GitHub Actions or Azure Pipelines.
- Exporting noncompliance reports and creating remediation tasks.

## Reasons to use EPAC

EPAC can be used to both deploy and manage Azure landing zone policies. Some reasons you may want to consider using EPAC to manage policy are:
- You have unmanaged policies in an existing brownfield environment that you want to deploy in the new ALZ environment. [Export the existing policies](https://azure.github.io/enterprise-azure-policy-as-code/extract-existing-policy-resources/) and manage them with EPAC alongside the ALZ policy objects.
- You have an Azure deployment that doesn't fully align to ALZ, for example, multiple management group structures for testing, nonconventional management group structure. The default assignment structure provided by other ALZ deployment methods may not fit your strategy.
- You have a team that is not responsible for infrastructure deployment, for example, a security team that might want to deploy and manage policies.
- You require features from policy not available in the ALZ accelerator deployments, for example, policy exemptions and documentation.

## Getting started

The EPAC GitHub repository provides detailed steps on getting started with managing Azure Policy. Some decisions need to be considered when determining if the project is a good fit for your environment:
- Environment topology - multiple tenancies and complicated management group structures are supported. You should think about how you want to structure your policy as code deployments to fit the topology to allow for multiple teams to manage policy and for testing of new policy deployments.
- Permissions - consider how you manage permissions for the deployment in particular for roles and identities. EPAC uses multiple stages to deploy both the policies and role assignments so separate identities can be used.
- Existing policy deployments - in a brownfield scenario you might have existing policies that must remain in place while EPAC is being deployed. You can use the [Desired State strategy](https://azure.github.io/enterprise-azure-policy-as-code/desired-state-strategy/) to ensure that EPAC manages only the policies it knows about.
- Deployment methodology - EPAC supports both Azure DevOps, GitHub Actions and a PowerShell module to help deploy policies. Sample pipelines are provided in the [EPAC Starter Kit](https://github.com/Azure/enterprise-azure-policy-as-code/tree/main/StarterKit) and can be adapted for your environment and requirements.

Follow the [quick start](https://azure.github.io/enterprise-azure-policy-as-code/quick-start/#epac-quick-start) guide to begin by exporting policy objects in your environment to gain familiarity with how EPAC manages Azure Policy.

For issues with the code or documentation, raise an [issue](https://github.com/Azure/enterprise-azure-policy-as-code/issues) in the GitHub repository. 

## Replacing existing policy deployment solutions

EPAC replaces the policy deployment parts of the Azure Landing Zone accelerators. When using these accelerators, you should not deploy Azure Policy due to EPAC being the source of truth for policy in the environment.

For more information, see the links below for policy management using Bicep and Terraform ALZ accelerators.
- [How Does ALZ-Bicep Implement Azure Policies?](https://github.com/Azure/ALZ-Bicep/wiki/PolicyDeepDive)
- [Archetype Definitions](https://github.com/Azure/terraform-azurerm-caf-enterprise-scale/wiki/%5BUser-Guide%5D-Archetype-Definitions)

## References

- [Enterprise Policy As Code](https://aka.ms/epac)