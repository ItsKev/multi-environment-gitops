# Multi environment GitOps

## Retrieve argocd password running on localhost:8080
```bash
kubectl -n argo get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
```