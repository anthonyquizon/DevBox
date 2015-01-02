
#TODO set NIX_PATH

#TODO search nix package via git clone of nixpkgs
#nix-env -f ~/Development/Environment/nixpkgs -qaP --description * | grep -i "$1"

function nix-search() { 
    echo "Searching..."
    nix-env -qaP --description | grep -i "$1"
}

#function nix-install() { 
#    nix-env -iA $1 
#}
