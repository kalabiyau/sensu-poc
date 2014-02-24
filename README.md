** DRAFT ** sensu-packaging RFC
=========

Goal of this project - to discuss future packaging for Sensu plugins.
Why - we have [plugins](https://github.com/sensu/sensu-community-plugins) repo already? Yes, we have it. It has a lot of :heart: from developers and users, but as well we have some problems, which also persist in `classic monitoring systems` with plugins nature:

* no version management for checks except for sha-ref which is not so useful in real life
* no dependencies management
* no test coverage as a requirement which leads to blind or almost blind PR accepts (if you don't use service tested - it is hard to tell if the code is sane - this is error prone by nature)
* hard to perform granular installation

Down with all of that! We are Ruby guys, and we can make it shine !

Killer features:

* Future integration with sensu client which can download and install checks/plugins/metrics from centralized server (either global either local). Yes - you just need to define a check and as a first approach it will be downloaded from central server and installed.
* versioning - clear and concise way to leave your infrastructure stable but still receive updates (Yes your checks can be updated if you want and in a way you want)
* Clearance on how to test check and which procedures to follow
* Dependencies management for every check - each node will have all deps installed automatically.
* searching mechanism allowing sensu server manager to pick proper check for his requirements - just click on this and that in your webui - and your will have your checks installed on desired nodes.

# RFC (yes, please drop a comment):

* use gem pattern as a foundation
* setup centralized server based on `geminabox`
* extend sensu client upcoming release to be able to install `those check gems` from `geminabox` which can be or local or global (Sensu supported)
* for each of existing check with more than 5 contributors - setup a separate repo like [this one](https://github.com/kalabiyau/sensu-poc) + add test coverage for them
* package and deliver(to server) tested checks each run of Travis CI if they changed and changes are sane

