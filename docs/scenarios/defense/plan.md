---
title: Plan for defense cloud adoption
description: Recommendations for planning a cloud adoption strategy in a defense organization
author: stephen-sumner
ms.author: wayneme
ms.reviewer: ssumner
ms.date: 10/18/2022
ms.topic: conceptual
ms.service: cloud-adoption-framework
ms.subservice: plan
---
# Plan for defense cloud adoption

The plan methodology falls within the mission domain of cloud adoption.

:::image type="content" source="./images/mission.png" alt-text="Figure that shows a domain tracker. It shows mission, platform, and workload. Mission is highlighted to show we're in the mission domain of cloud adoption." border="false":::
*Figure 1: Domain tracker - mission domain*

Any transformation requires a plan, and cloud adoption is no exception. The plan methodology is where mission owners prepare for cloud adoption. They need to make decisions that will help meet mission objectives and align the project with the right stakeholders. These plans will determine personnel and platform management needs. Proper planning helps ensure the project receives buy-in from stakeholders.

The planning phase of cloud adoption is where mission owners pick the right cloud broker approach. Using a cloud broker is a best practice in defense organizations because of the many benefits the relationship provides. Some defense organizations mandate the use of a specific cloud broker in the chain of command. Given the importance and benefits of cloud brokers, it’s worth exploring cloud broker benefits and approaches.

## Cloud broker benefits

Cloud brokers are centralized groups that build and manage cloud platforms. Cloud brokers perform many of the tasks required to govern a cloud environment and make cloud adoption much simpler for mission owners. Defense organizations sometimes have cloud broker requirements, and mission owners should factor these requirements into their plan. If mission owners can select from multiple cloud brokers, they'll need to determine which cloud broker offers the best services and price for this project.

Cloud brokers provided the following benefits:

- Govern landing zones
- Core services
- Platform authorization to operate (ATO)
- Improved efficiency

Let's address each of these benefits:

**(1) Governed landing zone** - The services, solutions, and workloads hosted in a defense environment require governed architecture. Cloud brokers build and maintain governed architectures that meet compliance requirements. These governed architectures are referred to as landing zones. Landing zone build features design decisions that include the following disciplines:

- Cost Management
- Security Baseline Management
- Identity Baseline Management
- Resources Consistency
- Deployment Acceleration

A landing zone includes all the foundational components defense workloads needed for secure, reliable, and cost-effective cloud operations. Below is a generalized landing zone architecture for defense scenarios. We recommend using subscriptions to demarcate service and workload environments.

:::image type="content" source="./images/cloud-broker-landing-zone.png" alt-text="Diagram of an Azure landing zone architecture. A red box around the landing zone subscription outlines mission owner responsibilities with a cloud broker. The cloud broker handles the rest of the architecture." lightbox="../../ready/enterprise-scale/media/ns-arch-cust-expanded.png" border="false":::
*Diagram 2: Azure landing zone architecture with mission owner responsibilities outlined in red*

Landing zone components can be divided into two major categories: platform environments and workload environments.

- The platform environments provide core services used by multiple workloads. Cloud brokers build and manage the platform environments.
- The workload environments are for workloads and application. The red box in the image above outlines an application landing zone.

Without a cloud broker mission owner would be responsible for the entire architecture and core services. Cloud brokers take technical responsibility for the core services. With a cloud broker, mission owners can focus on optimizing workloads to meet mission objectives.

For more on this topic, see [platform vs. application landing zones](/azure/cloud-adoption-framework/ready/landing-zone/#platform-vs-application-landing-zones).

**(2) Core services** - Cloud brokers implement and manage core services such as identity, networking, and management. In most instances, a cloud broker securely connects the new cloud environment to on-premises networks, builds operational environments, and establishes an identity access management (IAM) solution with policy enforcement based on mission requirements.

**(3) Platform authorization to operate (ATO)** - Experienced cloud brokers can help achieve a platform-level ATO quicker than mission owners on their own. A platform-level ATO directly affects the speed at which mission owners can deploy critical applications and workloads.

**(4) Improved efficiency** - A cloud broker can automate the flow of information, eliminating the need to manually generate data points or documents. This automation enables timely and accurate routing to approval authorities for workload deployment, providing traceability and accountability. Without a cloud broker, mission owners have to navigate the following hurdles:

- Obtaining and allocating funds
- Complying with oversight requirements
- Obtaining approval from security teams
- Handing off the project to technical teams for application build

These activities can last weeks or months, and in some cases years. The cloud broker simplifies and expedites the process for mission owners.

## Cloud broker approaches

There are different approaches for mission owners to consider when using a cloud broker. Mission owners can use a single cloud broker or multiple cloud brokers, and the right approach depends on mission needs.

**(1) Single cloud broker approach** - In a single cloud broker approach, mission owners contract cloud services with a single entity. There might be various support models, but the cloud broker is the single point-of-contact. A single cloud broker provides a single cloud identity solution referred to as a tenant. There are some distinct advantages to single tenancy. A single tenant offers the following benefits:

- Reduces identity and access management complexity by improving visibility and transparency across all cloud environments
- Improves security while facilitating compliant information sharing
- Simplifies building a zero-trust architecture
- Increases data transfer efficiency between war fighters in austere conditions

If these benefits meet the needs of mission owners, then a single broker is likely the better approach.

**(2) Multiple cloud broker approach** - A multiple-cloud-brokers approach uses two or more cloud brokers to provide managed cloud services. Multiple cloud brokers are better in complex organizations, and defense environments often have enough complexity to warrant a multiple cloud broker strategy. But there's a caveat. Multiple cloud brokers can add more risk to the cloud adoption plan and add more communication lines for the organization to manage.

The factors listed below will help you determine if the multiple cloud broker approach is the right one:

- ***Ownership*** – Mission owners might need their own cloud brokers. Decision-making groups often need their own tenant to meet mission-objectives and avoid delays due to dependencies.
- ***Isolation*** – Mission owners might need isolated environments for compliance, governance, or identity reasons. Each tenant (instance of Azure Active Directory) represents an isolated identity environment and can create a firm isolation barrier when needed.
- ***Management*** – Separating complex environments might be ideal for managing and modernizing your cloud workloads. But this management separation creates increased complexity higher in the command chain. It becomes more difficult to have a single view of all cloud assets.
- ***Security*** – Data compliance for varying impact levels might require multiple tenants and multiple cloud brokers authorized and with the experience to manage those impact levels.

The multi-cloud-broker strategy can be used at different levels in a defense organization. A broker can be assigned to individual military branches (naval, air, ground) or groups of applications. The choice depends on the needs of your defense organization around ownership, isolation, management, and security.

## Next step

Planning prepares defense organizations for execution. The organize methodology uses this plan and starts completing the non-technical prerequisites.

> [!div class="nextstepaction"]
> [Organize](organize.md)
