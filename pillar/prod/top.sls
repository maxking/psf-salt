base:
  '*':
    - consul
    - firewall.consul
    - networking
    - roles
    - secrets.system-mail
    - sudoers
    - tls
    - users
    - postgres.clusters
    - secrets.monitoring.datadog

  'backup-server':
    - match: nodegroup
    - backup.server

  'bugs':
    - match: nodegroup
    - firewall.bugs
    - secrets.mail-opt-out
    - secrets.bugs
    - bugs

  'bugs.ams1.psf.io':
    - secrets.backup.bugs

  'cdn-logs':
    - match: nodegroup
    - fastly-logging
    - firewall.fastly-logging

  'codespeed':
    - match: nodegroup
    - firewall.codespeed
    - secrets.codespeed
    - secrets.postgresql-users.codespeed
    - codespeed

  'docs':
    - match: nodegroup
    - firewall.rs-lb-backend
    - groups.docs
    - secrets.docs
    - secrets.backup.docs

  'downloads':
    - match: nodegroup
    - firewall.rs-lb-backend
    - groups.downloads
    - secrets.backup.downloads

  'hg':
    - match: nodegroup
    - firewall.rs-lb-backend
    - secrets.backup.hg
    - secrets.ssh.hg

  'loadbalancer':
    - match: nodegroup
    - haproxy
    - firewall.loadbalancer
    - ocsp
    - secrets.fastly
    - secrets.tls.certs.loadbalancer

  'linehaul':
    - match: nodegroup
    - firewall.linehaul
    - secrets.pypi.linehaul
    - pypi.linehaul

  'mail':
    - match: nodegroup
    - firewall.mail
    - secrets.mail-opt-out
    - secrets.backup.mail
    - groups.mail

  'planet':
    - match: nodegroup
    - planet
    - firewall.http

  'pythontest':
    - match: nodegroup
    - firewall.http
    - firewall.ftp

  'slack':
    - match: nodegroup
    - secrets.slack

  'web-pypa':
    - match: nodegroup
    - firewall.rs-lb-backend

  'salt-master':
    - match: nodegroup
    - firewall.salt
    - secrets.dyn
    - secrets.postgres-admin
    - postgresql.server
    - secrets.postgresql-users.all
