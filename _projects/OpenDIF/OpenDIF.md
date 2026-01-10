---
layout: page
title: OpenDIF
start_date: 2025-07-01
end_date: 
summary: Open Data Interchange Framework
image: assets/images/projects/OpenDIF.jpg
---

Start date: {{ page.start_date }}

OpenDIF (Open Data Interchange Framework) is an open-source platform transforming how organizations exchange data. Instead of dealing with multiple disconnected data sources, OpenDIF acts as an intelligent intermediary that provides a single, unified point of access. Whether you're a large company, university, or government agency, this framework simplifies complex data requests by automatically coordinating between data providers, handling authorization, managing consent, and aggregating results into a single response.

## Core Architecture

OpenDIF is built as a microservices-based platform that orchestrates secure data exchange workflows. When a data consumer makes a request, the **Orchestration Engine** receives it and coordinates the entire process. First, it checks authorization with the **Policy Decision Point**, which enforces field-level access control policies. If consent is required, the **Consent Engine** manages the workflow, allowing data owners to approve or deny access through a citizen-facing portal. Once authorized, the Orchestration Engine splits the request into provider-specific queries, fetches data from multiple sources in parallel, and merges the results back into a unified response.

## Key Components

The platform consists of several specialized services working together:

**Backend Services (Go):**
- **Orchestration Engine** - The central coordinator that receives GraphQL queries, validates authorization, manages consent workflows, and federates requests to multiple data providers
- **Policy Decision Point** - Enforces attribute-based access control (ABAC) policies, determining which fields an application can access based on permissions and expiration rules
- **Consent Engine** - Manages the complete consent lifecycle, allowing data owners to approve, reject, or revoke access to their data through a secure workflow
- **Portal Backend** - Provides APIs for administrative and member portals, handling user management, schema management, and application configuration

**Frontend Portals (React/TypeScript):**
- **Admin Portal** - Administrative dashboard for managing the OpenDIF platform, users, schemas, and policies
- **Member Portal** - Interface for data providers and consumers to manage their applications, data sources, and access configurations
- **Consent Portal** - Citizen-facing interface where data owners can review and manage consent requests for their personal data

**Optional Components:**
- **Audit Service** - Comprehensive audit logging and event tracking for compliance and traceability (services function normally without it)
- **Observability Stack** - Metrics collection and visualization using Prometheus and Grafana for monitoring system health and performance

## Technical Approach

OpenDIF uses GraphQL as its primary query language, allowing consumers to request exactly the data they need in a single request. The Orchestration Engine intelligently splits these queries based on schema definitions, sending parallel requests to multiple providers and automatically merging responses. All communication between services uses standard HTTP protocols, making it easy to integrate with existing systems.

Instead of storing data itself, OpenDIF acts as a smart router that connects data consumers with data providers. Each provider maintains control over their own data and systems, while OpenDIF handles the complex orchestration, security, and consent management. This approach ensures data sovereignty while providing a seamless experience for consumers.

The platform is designed with security and compliance in mind. Every request is traced with a unique trace ID, enabling full audit trails. Policy checks happen at the field level, ensuring fine-grained access control. Consent workflows are built into the core architecture, making it easy to comply with data protection regulations like GDPR.

OpenDIF is built to scale, with each service running independently and communicating through well-defined APIs. Services can be deployed together or separately, allowing organizations to start small and grow as needed. The optional audit service and observability stack can be added when required, without disrupting core functionality.

Find more information about OpenDIF here: [GitHub Repository](https://github.com/OpenDIF/opendif-core)

