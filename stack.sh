#!/bin/bash

install_helm() {
    if ! command -v helm &> /dev/null; then
        echo "Installing Helm..."
        curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
        chmod +x get_helm.sh
        ./get_helm.sh
        rm get_helm.sh
    fi
}

manage_helm_repos_and_charts() {
    local kube_context=$(kubectl config current-context)

    helm repo add grafana https://grafana.github.io/helm-charts

    helm repo update


    helm upgrade --install alloy -n monitoring ~/alloy/ --kube-context "$kube_context"

    helm upgrade --install loki-distributed-stack -f ~/loki-distributed.yaml grafana/loki-distributed --namespace monitoring --kube-context "$kube_context"

    helm upgrade --install kube-prometheus-stack -f ~/grafana.yaml prometheus-community/kube-prometheus-stack --namespace monitoring --kube-context "$kube_context"

    helm install tempo grafana/tempo-distributed --namespace monitoring --kube-context "$kube_context"
}

install_helm
manage_helm_repos_and_charts
