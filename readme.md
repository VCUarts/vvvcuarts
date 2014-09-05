# VVVCUarts 

VCUarts auto-sitesetup for [https://github.com/10up/varying-vagrant-vagrants/](Varying Vagrants Vagrant) and [https://www.vagrantup.com/](Vagrant)

To get started:

1. If you don't already have it, clone the [Vagrant repo](https://github.com/10up/varying-vagrant-vagrants/) , perhaps into your `~/Vagrants/` directory (you may need to create it if it doesn't already exist)
2. Install the Vagrant hosts updater: `vagrant plugin install vagrant-hostsupdater`
3. Clone this repo into the `www` directory of your Vagrant install
4. If your Vagrant is running, from the Vagrant directory run `vagrant halt`
5. Followed by `vagrant up --provision`.
6. Wait
7. Profit!

## To Do
1. Setup yml file or something for install variables   
2. Figure out grunt workflow and installing needed gems