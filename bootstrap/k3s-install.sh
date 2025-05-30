#!/bin/bash

# === K3s Control Plane Install for nuc1 ===
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="\
  --node-name nuc1 \
  --write-kubeconfig-mode 644 \
  --tls-san 192.168.86.221" sh -

# Confirm it worked
echo
echo "[✓] K3s server installed on nuc1"
echo "Waiting 10 seconds before checking node status..."
sleep 10
kubectl get nodes
