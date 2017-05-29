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

### Workflow
```
> git clone https://github.com/desert-planet/hayt-vagrant
> vagrant status
```
This will clone the `hayt` repo locally, make your changes here with your favorite editor.
When you're ready to test:

# TODO(sshirokov): Note that vagrant needs to come up as admin for symlinks to work

```
> vagrant up
> vagrant ssh
$ cd arrakis/hayt
$ bin/hubot
```
Test your feature.
