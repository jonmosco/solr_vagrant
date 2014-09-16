#Solr Vagrant Environment

This is a single node solr instance for testing/learning Apache Solr

##Usage

Requires Puppet Staging Module

Checkout the submodules:

```
  $ git submodule init
  $ git submodule update
```

  Boot the environment:

```
  $ vagrant up --provider=vmware_fusion
```

Browse to the Solr web interface:

```
  http://localhost:8983/solr
```
