# vagrant-hubot
To aid in the development of Hayt, our robotic soul

### Personality
This tool will provide a foundation for the soul to exist.

It breaths life and tests is faith.

Contribution's will only be acceptable through pull requests.

The collective mind will guide Hayt.

### Dependencies
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### Goals
- [ ] Support Hubot execution.
- [ ] Support mocha test execution.

### Workflow
```
> git clone git@github.com:desert-planet/vagrant-hubot.git
> vagrant up
```
This will clone the `arrakis-hubot` repo locally, make your changes here with your favorite editor.
When you're ready to test:
```
> vagarnt ssh
$ cd arrakis/arrakis-hubot
$ bin/hubot
```
Test your feature.
