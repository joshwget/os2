Run system services in containers managed directly by Rancher. The end goal is the ability to replace the currently running distro using something like [takeover.sh](github.com/marcan/takeover.sh).

## Instructions
> Note: This is very, very experimental. Don't deploy this on anything you don't want to break.

Add this repo as a [Rancher catalog](http://docs.rancher.com/rancher/latest/en/catalog/) and deploy the `os` template. Use `ec2` as the datasource for AWS or the location to a custom URL. This is the same as [RancherOS configuration](https://docs.rancher.com/os/configuration/).

If an SSH key was provided then SSH will be available on port 23 (`ssh -p 23 rancher@...`). The `console` service will likely need to be restarted once after the initial deployment for this to work properly.
