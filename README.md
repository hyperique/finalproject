Целью проектной работы является развертывание распределенного кластера k8s и реализация CI/CD для демонстрационного микросервисного приложения от google "Online boutique". https://demoshop.ust.inc Проект развернут в baremetal кластере на инфраструктуре VMware. Развертывание и управление кластером осуществляется с отдельного сервера ust-k8s-ansible.
 Схема инфраструктуры проекта:

![k8sscheme](https://github.com/user-attachments/assets/4e9ed9ee-75e1-47d8-b852-7c604013c5f8)


 Схема включает в себя следующие инфраструктурные компоненты k8s:
 
 1. Ingress nginx
 2. MetalLB
 3. Cert manager
 4. Grafana https://grafana-k8s.ust.inc
 5. Prometheus
 6. Loki
 7. Promtail
 8. ArgoCD https://argocd-k8s.ust.inc
 9. Github Actions
 10. Consul https://consul.ust.inc
 11. NFS subdir external provisioner
 12. Linstor
 13. Alertmanager
 14. Minio https://minio-k8s.ust.inc

 Каждый из каталогов проекта содержит readme с кратким пояснением по установке и назначению того или иного сервиса.
