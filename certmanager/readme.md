Certmanager развернут в кластере для выпуска let's encrypt сертификатов для ingress сервисов, опубликованных в проекте.

```helm repo add jetstack https://charts.jetstack.io --force-update```

```helm install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --version v1.15.3 --set crds.enabled=true```

![alt text]({423694CF-2865-490E-9803-F1EFA8F2DA2D}.png)

