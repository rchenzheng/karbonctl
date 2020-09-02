## Renew/get karbon context to pwd and set context

```bash
# Add to your *rc
karbon_context_delete() {
        # ie. karbon_context_delete 'my-cluster'
        declare cluster="$1"
        kubectl config unset "users.default-user-${cluster}"
        kubectl config unset "clusters.${cluster}"
        kubectl config unset "contexts.${cluster}-context"
}
export -f karbon_context_delete &> /dev/null
```

```bash

docker build -t karbonctl:latest .

docker run --rm -it -v ~/.kube/:/tmp karbonctl:latest ${PRISM_CENTRAL_IP} ${AD_USER} ${CLUSTER_NAME} /tmp/karbon.cfg ${AD_PASSWORD}

# Force renewal
karbon_context_delete ${CLUSTER_NAME}

KUBECONFIG=~/.kube/karbon.cfg:${KUBECONFIG} kubectl config view --flatten > ~/.kube/config-temp && \
cp ~/.kube/config-temp ~/.kube/config && \
rm ~/.kube/config-temp ~/.kube/karbon.cfg

```

## Get karbon context to stdout

`docker run --rm -it -v $(pwd):/tmp karbonctl:latest ${PRISM_CENTRAL_IP} ${AD_USER} ${CLUSTER_NAME}`

