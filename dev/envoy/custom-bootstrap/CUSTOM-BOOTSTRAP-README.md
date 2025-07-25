# Custom Envoy Bootstrap Configuration

This sample creates a simple helloworld service that bootstraps the Envoy proxy with a custom configuration file.

## Starting the service

First, we need to create a `ConfigMap` resource with our bootstrap configuration.

```bash
kubectl apply -f custom-bootstrap.yaml
```

Next, we can create a service that uses this bootstrap configuration.

To do this, we need to add an annotation, `sidecar.istio.io/bootstrapOverride`, with the name of our ConfigMap as the value.

We can create our helloworld app, using the custom config, with:

```bash
kubectl apply -f example-app.yaml
```


If you don't have [automatic sidecar injection](https://istio.io/docs/setup/additional-setup/sidecar-injection/#automatic-sidecar-injection)
set in your cluster you will need to manually inject it to the services instead:

```bash
istioctl kube-inject -f example-app.yaml -o example-app-istio.yaml
kubectl apply -f example-app-istio.yaml
```

## Checking the Bootstrap Configuration

To see what bootstrap configuration a pod is using:

```bash
istioctl proxy-config bootstrap <POD-NAME>
```

## Check 'tracing' is in the boostrap file
## Bounce the deployment of helloWorld