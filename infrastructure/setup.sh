#!/bin/bash

kind create cluster --config configs/kind-config.yaml

helm repo add argo https://argoproj.github.io/argo-helm
helm install argo-cd -n argo --create-namespace argo/argo-cd --values configs/argo-cd-values.yaml

kubectl apply -f k8s