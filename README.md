### create-kubernetes-cluster-with-terraform
1. This attempt was carried out in a Azure sandbox environment provided by ACG.
2. The Resource Group was pre-assigned with the name 1-77437418-playground-sandbox.
3. There is no requirement for service principal credentials. However, the service principal credential can be manually created with `az ad sp create-for-rbac --name myAKSClusterServicePrincipal` in the Azure CLI and then `export TF_VAR_client_id=<service-principal-appid>`, `export TF_VAR_client_secret=<service-principal-password>`.
4. The Kubernetes tools can be used to verify the newly created cluster:
  - *Bash*: `echo "$(terraform output kube_config)" > ./azurek8s`
  - edit the file `azurek8s` (with vim or nano) to remove `<< EOT` at the beginning and `EOT` at the end
  - *Bash*: `export KUBECONFIG=./azurek8s`
  - *Bash*: `kubectl get nodes`
  - the details of the worker nodes will be displayed with status ***Ready***:
```
NAME                                STATUS   ROLES   AGE   VERSION
aks-agentpool-22057413-vmss000000   Ready    agent   21m   v1.21.9
aks-agentpool-22057413-vmss000001   Ready    agent   21m   v1.21.9
aks-agentpool-22057413-vmss000002   Ready    agent   21m   v1.21.9
```
