#!/bin/bash

kubectl get pods --all-namespaces | grep -v Running
# kubectl → Kubernetes CLI
# --all-namespaces → all namespaces
# grep -v Running → show non-running pods
