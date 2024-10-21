Балансировщик metallb установлен со стандартным конфигом из helm chart.

```helm install metallb metallb/metallb --namespace=metallb --values=metallb/values.yaml```

Добавим ippool:

```kubectl apply -f metallb/ippool.yaml```

![alt text]({113E75E8-8D7E-41F1-AB20-93728F167449}.png)