Установим minio как s3 хранилище логов loki.

1. Установим operator:

```helm repo add minio-operator https://operator.min.io```

```helm install --namespace minio-operator --create-namespace --values=minio/operator/values.yaml minio-operator minio-operator/operator```

![alt text]({56CCFF32-9106-4A40-AED7-1FE0AD2676FF}.png)

2. Развернем tenant

 ```helm upgrade --install --namespace minio --create-namespace --values minio/values.yaml minio-k8s minio-operator/tenant```

 ![alt text]({EEFA2CEB-382D-40B4-BF24-B0026BD1BF96}.png)