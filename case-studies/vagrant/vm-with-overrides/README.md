Vagrant Case Study
==================

This case study works with a simple `Vagrantfile` that also supports overrides.
The overrides are read from a JSON manifest file (`vagrant.json`) and are merged
with the defaults presented in the `Vagrantfile` itself. There is extra reporting
that clearly specifies what configurations are being used.

The environment uses the `trusty64` distribution of Ubuntu.

# Configuring Vagrant with `vagrant.json`
You can configure your environment using a file that is ignored by Git. This
allows you to set your ports in such a way that you can leave the `Vagrantfile`
alone so that changes to port or IP are local only to your machine and not
accidentally propagated and committed to source.

  1. Copy the `vagrant.json-sample` file and rename it to `vagrant.json`.
  2. Edit `vagrant.json`

# Getting Started

Start and provision the VM, e.g.

```
$ vagrant up
```
