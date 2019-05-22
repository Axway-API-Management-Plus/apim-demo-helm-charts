# Demo HELM charts for Axway API Management v7.7

These charts are provided as an example for deploying Axway API Management solution in Docker containers in Kubernetes.

**Note**: these Helm charts are created for a demonstration purpose. They are not suitable for production.

## Install and Setup

Prerequisites:

- These charts have been tested with Axway API Management v7.6.2 and v7.7

- Knowledge of Kubernetes

- You have Axway API Management docker images in a Docker registry (protected by user ID/password)

- You have your own images for MySQL (*mysql* in local-values.yaml) and Ingress controller (*ccbackend* in local-values.yaml)

- You configured a Kubernetes cluster with Helm installed

- You execute the provided commands on a Kubernetes *master* node

These are general steps for using these charts:

1. Set up a *RUNID* environment variable. It will be used as a name for a namepsace created by Kubernetes.

2. Modify *local-values.yaml* with your Docker registry host, docker images names and tags, etc.

3. Run the *build-cluster.sh* script to deploy these charts

### Helm status of a deployed app

To view the status of your Helm deployment, run the following command (replace "demo" with your release name):

```bash
helm status demo
```

## Limitations/Caveat

- These Helm charts are for demo purpose only

- API Portal, Embedded Analytics and Cassandra run outside of a Kubernetes cluster

- Docker images are in a Docker registry

- This setup assumes that Cassandra runs in a docker container *cassandra* on a *master* node

## Contributing

Please read [Contributing.md](https://github.com/Axway-API-Management-Plus/Common/blob/master/Contributing.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Team

![alt text](https://github.com/Axway-API-Management-Plus/Common/blob/master/img/AxwayLogoSmall.png)
Axway Team

## License

[Apache License 2.0](/LICENSE)
