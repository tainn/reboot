alias f := fix
alias u := upgrade

# command list
default:
    @just --list --unsorted

# cargo lint && fmt && check && sort
fix:
    cargo clippy --fix --allow-dirty --allow-staged
    cargo fmt
    cargo check
    cargo sort

# cargo lib upgrade
upgrade:
    cargo upgrade --incompatible
