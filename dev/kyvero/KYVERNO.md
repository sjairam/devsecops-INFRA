## Install Kyverno

### Install Kubectl

kubectl create -f https://raw.githubusercontent.com/kyverno/kyverno/main/config/install.yaml

### Install via HELM

helm repo add kyverno https://kyverno.github.io/kyverno/

helm repo update

helm install kyverno kyverno/kyverno --namespace kyverno --create-namespace

### CRDs 9 

Some CRDS give 403 error

