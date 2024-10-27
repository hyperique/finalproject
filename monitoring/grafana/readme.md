Система мониторинга из helm chart kube-prometheus-stack. Используется для мониторинга приложения и компонентов кластера. Из данного чарта устанавливаем Grafana, Prometheus и Alertmanager. Доступ к grafana можно получить по адресу: grafana-k8s.ust.inc


`helm upgrade --install monitoring prometheus-community/kube-prometheus-stack --namespace=monitoring --create-namespace --values=monitoring/grafana/values.yaml`

![alt text]({61BDD6AD-A23F-45F0-980C-022F4652BA92}.png)

Datasources для grafana:

![alt text]({FCDE381C-D2F0-496D-BE01-4C2AF557759D}.png)

В grafana создан кастомный dashboard для наблюдения за состоянием deployments микросервисов (dashboard.yaml). В нем выведена метрика kube_deployment_status_replicas_available. В случае падения одного из микросервисов мы это увидим на графике dashboard. Так же для каждого сервиса настроен alert (alertrules.yaml), который в случае отутствия активных реплик в deployment проинформирует об этом в telegram канал. 

![alt text]({77D03ED9-D624-464F-9EB8-10C1EBC94FF9}.png)

![alt text]({4D8DD230-A5F9-4370-8E76-4C4B51A10F95}.png)

![alt text]({DB77F8E4-1BD2-41F8-A709-311C1DADCBF5}.png)

В случае появления >1 работающего pod в deployment мы получим сообщение о восстановлении работоспособности:

![alt text]({33913BF3-4C37-44EB-85BA-2142BD69F51F}.png)