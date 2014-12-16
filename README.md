### Install
1. Install [Vagrant](https://www.vagrantup.com/downloads.html).
2. Add a ubuntu image:
```vagrant box add precise64 http://files.vagrantup.com/precise64.box```
3. Clone the repository:
```git clone --recursive https://github.com/atomical/puppet-halo-example```
4. Boot and configure the server: ```cd puppet-halo-example && vagrant up```
5. Launch Halo and directly connect to the server at 127.0.0.1:2800

### Deploy with Puppet

```
sudo apt-get install git puppet
git clone --recursive https://github.com/atomical/puppet-halo-example
cd puppet-halo-example
puppet apply manifests/base.pp --modulepath=./modules \
  --fileserverconfig=./fileserver.conf
```

### Use
* The configuration is in ```manifests/site.pp```.  You may need to consult the Puppet [documentation](https://docs.puppetlabs.com/).
* Vagrant is configured to forward ports 2800 through 2900.  You can modify this in the [Vagrantfile](https://github.com/atomical/puppet-halo-example/blob/master/Vagrantfile#L30-L32).


