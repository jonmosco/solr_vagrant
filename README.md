#Solr Vagrant Environment

This is a single node solr instance for testing/learning Apache Solr

##Usage

Requires Puppet Staging Module

Checkout the submodules:

```
  $ git submodule init
  $ git submodule update
```

Set the $solr_version to match what you are using in your environment
```puppet
$solr_version = '4.10.0'
```

  Boot the environment:

```
  $ vagrant up --provider=vmware_fusion
```

Browse to the Solr web interface:

```
  http://localhost:8983/solr
```


NOTE

  If you are using virtualbox, sitch the VM in the Vagrantfile to be
  a vbox base box and use vagrant up.
