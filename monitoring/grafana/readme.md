Система мониторинга из helm chart kube-prometheus-stack. Используется для мониторинга приложения и компонентов кластера:

`helm upgrade --install monitoring prometheus-community/kube-prometheus-stack --namespace=monitoring --create-namespace --values=monitoring/grafana/values.yaml`

