alias u := upgrade
alias f := fix

# command list
default:
    @just --list --unsorted

# cargo lib upgrade
upgrade:
    cargo upgrade --incompatible

# cargo sort && lint && fmt
fix:
    cargo sort
    cargo clippy --fix --allow-dirty --allow-staged
    cargo fmt
