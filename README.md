# vagrant-hubot
To aid in the development of Hayt, our robotic soul

### Personality
This tool will provide a foundation for the soul to exist.

It will breathe life, and will tests its unwavering faith.

Contribution's will only be acceptable through pull requests.

The collective mind will guide Hayt.

### Dependencies
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### Goals
- [x] Support Hubot execution.
- [x] Support mocha test execution.

### Workflow
```
> git clone https://github.com/desert-planet/vagrant-hubot.git
# If on windows you should set autocrlf to false.
> git config --global core.autocrlf false
> vagrant status
```
This will clone the `arrakis-hubot` repo locally, make your changes here with your favorite editor.
When you're ready to test:
```
> vagrant up
> vagrant ssh
$ cd arrakis/arrakis-hubot
$ bin/hubot
```
Test your feature.

If you have written tests and placed them in tests/.
```
> vagrant up
> vagrant ssh
$ cd arrakis/arrakis-hubot
$ npm test
```
