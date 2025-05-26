# HomeOps - A GitOps Kubernetes HomeLab

## Introduction

This repository contains the infrastructure-as-code (IaC) configuration for a home Kubernetes lab environment designed for learning, testing, and running self-hosted workloads such as media servers.

## Overview

The lab consists of:
- **Mac Mini (M1)**: Acts as the control plane and primary storage host.
- **Intel NUCs (x3)**: Serve as worker nodes, each with Intel Celeron N4505, 4GB RAM, and 128GB SSD.
- **8TB HDD**: Connected to the Mac Mini and shared across the cluster for media storage.

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
- **AI Assist**: See [.chatgpt/prompt.md](.chatgpt/prompt.md) for the context used by ChatGPT to assist with this repo.

## Directory Structure

```
.
├── .context/               # GPT Prompts and .env files for local development
├── terraform/              # Terraform configuration for infra setup
└── README.md               # This file
```

---
Made with ❤️ for homelab learning and fun.
