use std::process::Command;

fn main() {
    Command::new("reboot")
        .spawn()
        .expect("Failed to execute a reboot");
}
