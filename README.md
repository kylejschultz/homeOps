# HomeOps - A GitOps Kubernetes HomeLab

## Introduction

This repository contains the infrastructure-as-code (IaC) configuration for a home Kubernetes lab environment designed for learning, testing, and running self-hosted workloads such as media servers.

## Overview

The lab consists of:
- **Intel NUCs (x3)**:
    - **nuc1**: 2 Cores, 32GB RAM, 512GB SSD
    - **nuc2**: 2 Cores, 16GB RAM, 512GB SSD
    - **nuc3**: 2 Cores, 8GB RAM, 256GB SSD
- **Worker Node VM**:
    - **nucx**: 4 core, 4-16GB RAM, 1TB SSD
        - Virtualized Ubuntu install on my gaming rig with dynamic RAM allocation
        - Intended for heavy-cpu workloads that would overpower the Celeron processors in the NUCs.
        - Will also act as storage controller, with up to 4 1TB SSDs for backing storage.

All infrastructure is managed using GitOps practices. This repo holds the source of truth — changes committed here are automatically applied to the cluster via ArgoCD.

## Goals

- Use GitOps workflows for configuration and app management
- Host self-contained services (e.g., media servers, internal tools)
- Automate node provisioning and app deployments
- Create testing environment for various workloads

## Key Tools

- **ArgoCD**: GitOps tool to sync repo state with cluster state
- **K3s**: Lightweight Kubernetes distribution for the cluster
- **Terraform**: Used to automate setup of NUCs and networking
- **NFS**: For distributed storage (pending final implementation)
- **AI Assist**: See [.context/prompt.md](.context/prompt.md) for the context used by ChatGPT to assist with this repo.

## Directory Structure

```
.
├── .context/               # GPT Prompts and .env files for local development
├── terraform/              # Terraform configuration for infra setup
└── README.md               # This file
```

---
Made with ❤️ for homelab learning and fun.
