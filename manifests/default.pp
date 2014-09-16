## Puppet Manifest for setting up a proper Solr Environment

## Version of Solr to install
$solr_version = '4.10.0'

service { 'iptables':
  ensure => stopped,
}

package { 'java-1.7.0-openjdk':
  ensure => installed
}

staging::deploy { "solr-${solr_version}.tgz":
    source  => "http://apache.mirrors.hoobly.com/lucene/solr/${solr_version}/solr-${solr_version}.tgz",
    target  => '/usr/local/src',
    require => Package['java-1.7.0-openjdk'],
}

exec { 'start_solr':
  command => "/usr/bin/java -jar /usr/local/src/solr-${solr_version}/example/start.jar &",
  cwd     => "/usr/local/src/solr-${solr_version}/example",
  onlyif  => '/bin/ps -ef | grep java',
  timeout => 0,
  require => Staging::Deploy["solr-${solr_version}.tgz"],
}
