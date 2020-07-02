## Get karbon context to pwd and set context

```
docker run --rm -it -v $(pwd):/tmp karbonctl:latest ${PRISM_CENTRAL_IP} ${AD_USER} ${CLUSTER_NAME} /tmp/karbon.cfg

export KUBECONFIG=$(pwd)/karbon.cfg
```

## Get karbon context to stdout

`docker run --rm -it -v $(pwd):/tmp karbonctl:latest ${PRISM_CENTRAL_IP} ${AD_USER} ${CLUSTER_NAME}`

