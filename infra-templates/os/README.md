## RancherOS
> Warning: This is a highly experimental template. Deploy only to hosts you're willing to spare.

Deploy RancherOS via Rancher.

### Configuration

The datasource option configures where RancherOS should look for userdata and metadata.
- `ec2` for Amazon EC2
- `digitalocean` for Digital Ocean
- `gce` for Google Cloud
- `packet` for Packet
- `url` for a custom URL (`url:http://example.com/cloud-config.yml`)
