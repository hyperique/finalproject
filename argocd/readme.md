Для CD части в проекте предусмотрен ArgoCD. Выполняет следующие задачи:

1. Подключается к репозиторию проекта
2. Автоматически синхронизирует изменения в репозитории
3. Разворачивает в кластере новые версии приложений

Приложение развернуто из helm чарта ArgoCD (https://github.com/argoproj/argo-helm/)

`helm install argo-cd --namespace=argo-cd --create-namespace --values=argo-cd/valuescustom.yaml argo-cd/`

![alt text]({341EBD25-6427-402D-8D5E-48549AEA9041}.png)
![alt text]({2E0E37E4-9B83-4813-8C05-205F1C2B7968}.png)
![alt text]({F629E3B6-FE55-41EE-BD48-FCD590C56B67}.png)