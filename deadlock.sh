#!/bin/bash

# https://github.com/argoproj/argo-cd/issues/1329
kubectl get apps -A


#kubectl delete app -n argocd helm-argo-app-yaml

#? I had a finalizer in the app, going in and editing that to - finalizer: [] allowed it to delete.

