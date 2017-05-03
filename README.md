Like [RancherOS](https://github.com/rancher/os) except that all system services are managed by a container orchestration system (Cattle and Kubernetes so far). The end goal is the ability to replace the currently running distro using something like [takeover.sh](https://github.com/marcan/takeover.sh).

> Note: This is very, very experimental. Don't deploy this on anything you don't want to break.

## Instructions

### Deploying via Cattle

Add this repo as a [Rancher catalog](https://docs.rancher.com/rancher/latest/en/catalog/) and deploy the `os` template.

### Deploying via Kubernetes

Run `helm install .` from the `chart` folder.

### Configuration

SSH is currently hard-coded to port 23. After installing via either of the above methods you should be able to access the console with `ssh -p 23 rancher@...`.

The `datasource` field determines where userdata and metadata are read from. Supported options for clouds are `ec2`, `digitalocean`, `packet`, and `gce`.

## Building

1. Build the `ros` binary from https://github.com/joshwget/os/tree/os2
2. Build the `os-base` image from the `images/os-base/` directory using the binary built from the previous step
