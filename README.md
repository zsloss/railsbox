# Railsbox

## A very simple Vagrant box for Rails development

Railsbox is a simple and automatically-generated Ubuntu development environment for Ruby on Rails, allowing you to use your favourite text editor and web browser on the host computer while running your app on a virtual machine.

### Prerequisites
To use Railsbox, ensure you have [VirtualBox](www.virtualbox.org) and [Vagrant](www.vagrantup.com) installed. You will also need Git and SSH. If you are on Windows, I recommend using [Git Bash](git-scm.com/downloads) for your command line interface, which includes SSH.

### Goodies in the box
* Ubuntu 12.04 LTS 64-bit
* rbenv
* Ruby 2.1.5
* Rails
* sqlite3
* node.js
* Git

### Getting Started
To begin, `cd` to your workspace/projects directory. Then:

`$ git clone https://github.com/zsloss/railsbox.git new-dir` where "new-dir" is name of the directory in which you want the box to reside.

`$ vagrant up`

Allow a few minutes for the box to build itself. When it's finished, you can SSH into the new box:

`$ vagrant ssh`

To facilitate the creation of new Rails apps, I have provided a simple script. If you wanted to create an app named `mynewapp`:

    $ cd
    $ ./newapp.sh mynewapp

This will create a new Rails app directory in your `/vagrant` directory (shared with the box's root directory), and symlink to it in your home directory. To access `mynewapp` on the box:

`$ cd ~/mynewapp`

To check everything is working:

    $ cd ~/mynewapp 
    $ rails server -b 0.0.0.0

Now access `localhost:3000` on your host machine's web browser, and you should see the default Rails welcome screen.

To shut down the box:

`$ vagrant halt`

To destroy the box (**WARNING:** all files stored on the box outside `/vagrant` will be lost!)

`$ vagrant destroy`

To reboot or rebuild the box:

`$ vagrant up`

For more information on Vagrant, please check the [official documentation](https://docs.vagrantup.com/v2/).

You can edit files, view databases, etc. through the box or on the host.

### Troubleshooting

If the box fails to build, you might have to enable Hardware Virtualization in your BIOS, or edit the `Vagrantfile` and change `precise64` to `precise32` to use the 32-bit OS.
