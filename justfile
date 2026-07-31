alias u := upgrade
alias f := fix

# command list
default:
    @just --list --unsorted

# cargo lib upgrade
upgrade:
    cargo upgrade --incompatible

# cargo lint && fmt && check && sort
fix:
    cargo clippy --fix --allow-dirty --allow-staged
    cargo fmt
    cargo check
    cargo sort
