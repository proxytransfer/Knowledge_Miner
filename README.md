# Knowledge Miner

Knowledge Miner is a SaaS for systematically exploring what a language model can access from its own knowledge before external retrieval is introduced.

It organizes the result into a navigable knowledge map while preserving provenance, local gaps, contradictions and uncertainty.

## Core principles

- model-agnostic;
- black-box text input/output is sufficient for the core concept;
- mine first, fuse later;
- a local gap is not a global absence;
- provenance and contradictions remain visible;
- single-model mining is a complete workflow;
- optional deeper model signals do not define compatibility.

## Mining Profiles

Knowledge Miner defines five exploration profiles:

- **M1 Quick**
- **M2 Standard**
- **M3 Deep**
- **M4 Extended**
- **M5 Research**

A Mining Profile controls exploration policy and budget semantics. It is separate from the subscription plan and from optional Deep Probe capabilities.

## Commercial model

Knowledge Miner is being prepared as a recurring SaaS. The initial base price decision is **US$20/month**, subject to production validation.

## Repository boundary

This public repository contains only deliberately public artifacts: public site, documentation, schemas, future thin-client/SDK material and approved releases.

The proprietary mining engine, billing/entitlement backend, security implementation and internal runtime are not part of this repository.

## Status

Current project phase: `REPOSITORY_SPLIT-01`.

No open-source license for the proprietary Knowledge Miner core is granted by this repository.
