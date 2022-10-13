---
title: Secure for defense cloud adoption
description: Recommendations for securing cloud workloads in a defense organization
author: stephen-sumner
ms.author: ssumner
ms.reviewer: ssumner
ms.date: 10/12/2022
ms.topic: conceptual
ms.service: cloud-adoption-framework
ms.subservice: organize
---
# Secure for defense cloud adoption

The secure methodology is a critical step in the workload domain of cloud adoption.

:::image type="content" source="./images/workload.png" alt-text="Figure that shows a domain tracker. It shows mission, platform, and workload. Workload is highlighted to show we're in the workload domain of cloud adoption." border="false":::
*Figure 1: Domain tracker - workload domain*

Security refers to the cybersecurity triad of confidentiality, integrity, and availability. Even though security falls within the workload domain, it’s an important consideration at every stage in the cloud adoption journey. Security fails without a proper strategy and plan. Landing zones and governance falter without proper security considerations. Modernizations weaken security posture if security isn't built into the development and operations processes.

Security is no less important for a workload. Workloads inherit security controls from the platform but must still apply security controls above the platform level.

Here are a few security recommendations to consider when building and managing defense workloads.

## Implement zero trust

Zero Trust is a security methodology, not a product. Implementations of zero trust will differ, but the commonality is an attempt to eliminate trust.

Three main principles of zero trust addressed here:

- Verify every session explicitly
- Enforce the least privilege on every identity
- Monitor, search, and secure continuously

**(1) Verify every session explicitly** - Verify refers to authentication and authorization. You need to authenticate and authorize every device regardless of location. Multifactor authentication is a common defense standard where the use of a security token supplements authentication process.

We recommend you use an attribute-based access control (ABAC) system. ABAC builds on role-based access control (RBAC) and requires devices to meet extra conditions before gaining access to a resource. Security professionals configure the conditions to limit access and minimize the number of roles assignments needing to be managed. Azure Active Directory provides native ABAC capabilities so cloud identities only access authorized information.

For more information, see [attribute-based access control](/azure/role-based-access-control/conditions-overview).

**(2) Enforce least privileges on every identity** - The concept of least privilege access is a familiar concept in defense environments. It’s visible at the macro-level in the mandatory access control system many defense organizations use. Data receives classification labels based on its sensitivity (confidential, secret, top secret), and individuals receive access to data needed to complete a task.  Once the task is completed, access is removed. Access to sensitive data when not needed is a violation of the least privileged model.

RBAC and ABAC are the core features of least privilege enforcement. People change roles and architecture changes, so it’s important to review access regularly to avoid privilege-creep. RBAC and ABAC allow teams to create a fine-grained access control system that meets the needs of an environment as access requirements change overtime.

Azure simplifies access reviews with RBAC and ABAC automating aspects of access control. Conditional access policies can be tied to roles, departments, projects, and locations of defense personnel. As people change roles or locations, their access to resources will change when updated in their identity. Security teams can perform manual reviews of any resource in Azure at any time. Azure lets users see resources from multiple levels, making manual review easier.

Granting elevated privilege for a defined period is a security best-practice. Azure AD simplifies the use of elevated privileges with Privileged Identity Management (PIM). PIM grants elevated privileges when requested by a legitimate user and only grants those privileges for a defined period. This process represents just-in-time-access and reduces the number of dormant accounts that have privileged access.

- For more information on PIM, see [PIM for just-in-time access](/azure/active-directory/roles/best-practices#2-use-privileged-identity-management-to-grant-just-in-time-access).
- For more on identity, see [Azure Government identity](/azure/azure-government/documentation-government-plan-identity).

**(3) Monitor, scan, and improve continuously** - Security shouldn’t be static. The threat landscape shifts constantly, and security must shift with it. Defense security teams should monitor, scan, and improve cloud environments to mitigate risks. Defense organizations often have required security tools that cloud-native tooling can supplement for comprehensive security detection and analysis.

Here are a few tools that add value to defense deployments:

- ***Threat intelligence***: Cloud environments should have a persistent threat intelligence and detection tool that evaluates network security posture. This tool should scan your environment and generate alerts for the vulnerabilities it detects.
- ***Distributed denial of service (DDoS)***: Security tools should protect against malicious or non-malicious distributed denial-of-service attacks.
- ***Security Information and Event Management (SIEM)***: A SIEM is a necessary threat detection and forensic capabilities that analyze, aggregates, and detects threats in logs generated throughout a cloud environment.

For a list of available security tools, see [Azure Government security](/azure/azure-government/documentation-government-plan-security).

**(4) Automate security compliance** - Defense security standards require defense security professionals to maintain hundreds of security controls. The manual execution of this process is labor intensive and prone to human error. It's possible to automate compliance with leading security standards and automate the remediation of cloud resources to align with those standards. Azure allows mission owners to automate compliance for:

- Zero Trust
- CMMC
- NIST 800-53

The Azure SIEM (Sentinel) can create a visual report all non-compliant resources against a given security standard. When prompted, it generates remediation suggestions for any security controls that aren’t compliant with the standard. The SIEM tool also lets security professionals download compliance assessment reports that can serve as point-in-time security baseline and improve transparency.

## Next step

The last methodology in the workload domain is the manage methodology. The manage methodology has recommendations for driving operational efficiency.

> [!div class="nextstepaction"]
> [Manage](manage.md)
