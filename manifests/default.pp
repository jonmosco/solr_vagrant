## Puppet Manifests for setting up a proper Solr Environment

package { 'java-1.7.0-openjdk':
  ensure => installed
}

staging::deploy { 'solr-4.10.0.tgz':
    source  => 'http://apache.mirrors.hoobly.com/lucene/solr/4.10.0/solr-4.10.0.tgz',
    target  => '/usr/local/src',
    require => Package['java-1.7.0-openjdk'],
}

exec { 'start_solr':
  command => '/usr/bin/java -jar start.jar',
  cwd     => '/usr/local/src/solr-4.10.0/example',
  onlyif  => '/bin/ps -ef | grep java',
  require => Staging::Deploy['solr-4.10.0.tgz'],
}
