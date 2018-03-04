# Data Pack Importer Vagrant

> Installer for [data-pack-importer](https://github.com/jason-p-pickering/data-pack-importer)

Vagrant isolates all dependencies and requirements into a Virtual Machine (Ubuntu 16.04). The "host" is your local computer while the "guest" is a isolated VM. 

This is meant to run on almost any system. However, you will need a substantial amount of RAM (4 GB) and disk space (5 GB) - if you're on a slow computer (i.e. only 4GB RAM), see below for details.

### Installation

1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
2. Install [Vagrant](https://www.vagrantup.com/downloads.html).
3. If you're on Windows 7, [update Powershell](https://docs.microsoft.com/en-us/powershell/scripting/setup/installing-windows-powershell?view=powershell-6#upgrading-existing-windows-powershell) to v4 ([ref](https://github.com/hashicorp/vagrant/issues/8777))
4. Clone this repository
5. Open a terminal and change into repository i.e. with `cd /path/to/repo`
6. In the terminal: `vagrant box add ubuntu/xenial64`
7. In the terminal: `vagrant up` (this takes a while if doing it for the first time) until finished. Eventually you should see e.g. `==> default: Notice: Finished catalog run in 123.45 seconds`
8. Open web browser: http://localhost:8787, username: `vagrant` password: `vagrant`
9. The location for shared files between host and guest is within the same repository. 


### Maintenance

- Check status: `vagrant status`
- To stop vagrant: `vagrant halt` in the host machine
- To update vagrant with code changes from the `data-pack-importer` repository, call either: `install_github(repo="jason-p-pickering/data-pack-importer", ref="prod")` in the R console, or run `vagrant up --provision` from the host machine.
- If you experience that Vagrant takes a lot of CPU, you can change it in the `Vagrantfile` before calling `vagrant up` and set it to `v.cpus = 1` and maybe also `v.memory = 2048`
- To SSH into the guest machine, use `vagrant ssh`
- To see history of RStudio commands, ssh into the machine and open the file e.g. with `less ~/.rstudio/history_database`
