use std::process::Command;

fn main() {
    Command::new("reboot")
        .spawn()
        .expect("failed to execute a reboot");
}
