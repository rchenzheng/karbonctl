FROM centos:7

COPY karbonctl /usr/local/bin

COPY kubeconfig /usr/local/bin

ENTRYPOINT ["/usr/local/bin/kubeconfig"]
