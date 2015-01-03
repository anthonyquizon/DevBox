
# NIXOS
# rm -r ~/.nix-defexpr
# ln -s ~/Development/Environment/nixpkgs ~/.nix-defexpr

# export NIX_PATH=~/Development/Environment/nixpkgs

function nix-search() { 
    echo "Searching..."
    nix-env -f ~/Development/Environment/nixpkgs -qaP --description * | grep -i "$1"
}

function nix-install() { 
    nix-env -iA $1 
}

export EDITOR=vim
export PATH=$HOME/.npm/bin:$PATH
