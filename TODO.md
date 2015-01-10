
# Provisions

### Vagrant
* Use vagrant-host-shell instead of manually executing setup-host.sh
    * git@github.com:phinze/vagrant-host-shell.git
* Use provision shell instead of manually executing setup-guest.sh

### Other
* Remove firewall with `networking.firewall.enable = false`
* Setup configuration.nix --default packages
* Merge vim repo to this one
* Symbolic link to development provision .nix files
* Configure npm to store in ~/.npm/
* Create Development Environment folder on host
* Project folder list setup
    * Development 
        * Projects
        * Environment
        * Work
* ~/.gitconfig

### Docker
* create docker commands
    * bash into container
    * nix-shell; cabal repl; port default to 8000
