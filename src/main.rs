use std::process::Command;

fn main() {
    let _ = Command::new("reboot")
        .status()
        .expect("failed to execute a reboot");
}
