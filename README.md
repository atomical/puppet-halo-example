### Install
1. Install [Vagrant](https://www.vagrantup.com/downloads.html).
2. Run this command to add a ubuntu image:
```vagrant box add precise64 http://files.vagrantup.com/precise64.box```
3. Clone the repository
```git clone --recursive https://github.com/atomical/puppet-halo-example && cd puppet-halo-example```
4. Boot and configure the server: ```vagrant up```
5. You should be able to connect to a new halo server at 127.0.0.1:2800