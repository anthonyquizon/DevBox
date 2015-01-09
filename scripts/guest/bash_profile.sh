
# NIXOS
# rm -r ~/.nix-defexpr
# ln -s ~/Development/Environment/nixpkgs ~/.nix-defexpr

# export NIX_PATH=~/Development/Environment/nixpkgs

# TODO create shortcut function for: nix-shell --pure

function nix-shell-unfree() {
    FLAGSAVE=$NIXPKGS_ALLOW_UNFREE;
    echo "Opening shell with NIXPKGS_ALLOW_UNFREE=1. Original setting of $FLAGSAVE will restored on exit.";
    export NIXPKGS_ALLOW_UNFREE=1;
    nix-shell "$@";
    echo "Restoring NIXPKGS_ALLOW_UNFREE=$FLAGSAVE ...";
    export NIXPKGS_ALLOW_UNFREE=$FLAGSAVE;
}

function nix-search() { 
    echo "Searching..."
    nix-env -f ~/Development/Environment/nixpkgs -qaP --description * | grep -i "$1"
}

function nix-install() { 
    nix-env -iA $1 
}

export EDITOR=vim

# SETUP PATH
NPM_PATH=$HOME/.npm/bin

export PATH=$NPM_PATH:$PATH
