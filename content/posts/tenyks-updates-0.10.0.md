###
title: Tenyks update (0.10.0). Connection issues.
date: 05 Mar 17 11:45 PST
category: projects
###

I have patched a few connection issues in
[Tenyks](https://github.com/kyleterry/tenyks). Below is a list of things
included in the new version (from the change log):

* Added backoff to failed connections when they try to reconnect. This replaces
  the retries setting that will stop retrying when the max is reached.
* Kind of fixed a bug in the connection watchdog that would try to send a PING
  on a nil channel when a connection was disconnected.
* Fixed logging. It was terrible. It's still not great, but it's much better.

In addition to fixing the connection issues, I decided to rip out the old
logging system as well and replace it with something more organized
so easily spot things that could have lead to a failure.

There's a new docker image up with the fixes at `kyleterry/tenyks:0.10.0`. You
can pull this down and wrap the image in your own docker file to copy your
config in. Consul, etcd, and redis support are coming soon so you can pull
config from an environment var.

`docker pull kyleterry/tenyks:latest`
