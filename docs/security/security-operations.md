---
title: Security Operations
description: Best practice guidance for establishing a Security Operations function
author: DominicAllen
ms.author: doalle
ms.date: 04/04/2021
ms.topic: conceptual
ms.service: cloud-adoption-framework
ms.subservice: secure
ms.custom: internal
---

# Security Operations

This article provides areas of consideration for organizations planning to establish a security operation function.

Security operations are those teams within a business that are focused on reducing organizational risk by detecting and remediating active attacks on enterprise assets.
Security operations does this with a variety of functions including the following two key areas:

- Reactively respond to detected attacks, proactively hunting for undetected attacks, gathering and disseminating threat intelligence. This is often delivered through teams referred to as a SOC.
- Helping the organization prepare for future attacks, which is a broader strategic set of activities aimed at defining and protecting the assets considered valuable or sensitive to the business.

Security operations is currently undergoing significant modernization at all levels with the advent of cloud technologies, adversary targeting of IoT and OT resources, and the zero trust transformation of security to a multi-layer discipline (vs. a network centric strategy). This modernization of security operations is becoming urgent because of the massive increase in relevant telemetry (which is hard to process with classic techniques, the availability of cloud services to provide analytics such as machine learning (ML) and behavior analytics, and the time sensitive nature of the security operations mission.

Today, there are two commonly observed patterns for how organizations structure their security functions:

- **IT-driven security** - often within an IT organization, and focussed primarily on responding to threat telemetry and resolving security incidents. In this structure, security is often defined within the IT organization and builds processes and architectures based on the outcome of securing the infrastructure that runs the business operations.

- **Business-driven security** - in this pattern, IT security is a mechanism for contributing to a broader concept of security within a business. The definition of what needs to be secured and the risk appetite is driven from stakeholders outside of IT and considered in a broader context of what is valuable to the business.
Securing infrastructure and applications is often part of the approach, rather than the success criteria itself, in this model.  

Security tools are only as good as the processes that surround them, so it is crucial that organizations design and run a well-structured security operations function to keep the organization safe.

Recent history has repeatedly shown the importance of maintaining a clear watch over the infrastructure and systems within an organization. The very real risk of unauthorized data access or exfiltration, rogue actors affecting production systems or deploying malware that disrupts the business' day to day operations should be top of mind for any company executives.
It is almost impossible to prevent a break in at a house if no one is checking that the doors and windows are shut and locked.

Organizations are becoming hyper-aware of the need to ensure that there are strong processes in place to ensure that the metaphorical doors and windows of their environments are shut and locked, and - when a window is left open - there is a process in place to close it and ensure it stays closed.

## Operations within a security strategy

### Security strategy connections

The Security Operations function should deliver on the requirements set out in the organization's security strategy.
Risk priorities and responsibilities defined in the strategy should be reflected in the day-to-day operations of the security operations.

Guidance as part of the Cloud Adoption Framework's Strategy methodology outlines how to define the organization security strategy:

[Define a security strategy - Cloud Adoption Framework | Microsoft Docs](https://docs.microsoft.com/azure/cloud-adoption-framework/strategy/define-security-strategy)

### Managing a security program

Delivering security controls inside an organization without business stakeholder engagement runs the risk of being seen as a blocker.
Work with the business to establish a basis of understanding that security can be an enabler for innovation and growth, as opposed to a group that always says 'no'. Engaging in discussion with the business to agree how the security strategy can be delivered without compromising technical delivery or creativity.
The resulting set of controls are often referred to as 'guard rails', which are technical boundaries, defined by policy. Enabling flexibility to a point but stops inadvertent increase in security risk or deviation from company policy.

The boundaries defined in the guard rails become the baseline. From this baseline, the security operations team can find and investigate deviations. This may result in a defect or issue being identified that requires resolution or - equally - it could find a use case where the boundary needs reviewing and potentially revising to maintain the balance between business function and security control.

### Building a modern SOC

In a world of hyper-scale distributed compute, the ability to collate, analyze, and respond to events and telemetry at scale is crucially important.
It is not economically (or practically) viable to scale the number of people in a security operations function in direct correlation to the number of workloads managed. Technology must be used to scale the management to meet the demand.
In practical terms, scale requires centralization of telemetry. Bring all of the organization's security signals into a consolidated data set.
This data can be filtered, modelled, and have business logic applied to it in order to find the events and activities that require intervention - automated or human.

Security Information and Event Management (SIEM) tools can help address this goal. Many are designed to ingest telemetry from a wide range of sources - identity platforms, network monitors, applications, device management tools.

## Processes required to 'assume breach'

### Holistic monitoring

Every data point related to an environment helps build a better picture of the activities and anomalies - either by confirming a common behavior or being an antipattern to it.
As a result, security operations teams should seek to ingest as many relevant data feeds as possible in order to develop the most articulate view of activities as possible. This context will prove useful - not only in spotting an anomalous event - but also in responding to the event and determining potential impact and scale.

### Proactive testing and recovery

Assume breach. Assume that the environment is already compromised and approach testing as if you were looking for an attacker.

### Recovering and resecuring

Even with the best processes and technologies in place, there will be bugs or incidents that require resolution. The impact of the incident is influenced by how teams respond and rectify the issue - and learn from it to ensure it cannot happen again.
