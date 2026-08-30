Defensive configuration review
project overview
This project documents a basic defensive security configuration review performed on an Ubuntu 26.04 LTS virtual machine.

The purpose of the project is to review and document essential Linux security configurations, including firewall protection, SSH configuration, network settings, and basic system information.

Environment
Operating System: Ubuntu 26.04 LTS
Codename: Resolute
Hostname: Omoniyi-virtualbox
Kernel: 7.0.0-29-generic
IP Address: 10.0.2.15/24
Virtualization: VirtualBox
Security Checks Performed
Firewall Configuration

The UFW firewall was verified to be active.

Firewall status: Active
Default incoming policy: Deny
Default outgoing policy: Allow
SSH access: Allowed
SSH Configuration

The SSH service was reviewed and tested.

SSH service: Active and running
SSH startup: Enabled
SSH port: 22
SSH firewall access: Allowed
SSH localhost connection: Successful
System Information

The following system information was collected:

IP address
Hostname
Ubuntu version
Kernel version
RAM and swap usage
Disk storage
System uptime
Evidence

Screenshots documenting the configuration checks are stored in the evidence directory.

The evidence includes:

UFW firewall status
UFW firewall rules
SSH service status
SSH enabled status
SSH listening on port 22
Successful SSH connection
IP address configuration
Ubuntu version
RAM and swap information
Disk storage information
Kernel version
System uptime
Findings

The review confirmed that the Ubuntu system has basic defensive controls configured.

The UFW firewall is active and uses a default-deny incoming policy. SSH is running, enabled at startup, listening on port 22, and explicitly permitted through the firewall.

Recommendations
Keep the Ubuntu operating system regularly updated.
Allow only required network services through the firewall.
Use strong authentication for SSH.
Consider disabling password-based SSH authentication and using SSH keys where appropriate.
Monitor system and authentication logs regularly.
Review firewall rules periodically and remove unnecessary rules.
Project Structure
defensive-configuration-review/
├── diagrams/
├── evidence/
├── findings/
├── report/
└── source files/
Conclusion

The defensive configuration review demonstrates the verification of basic Linux security controls on an Ubuntu virtual machine. The results and supporting evidence are organized within this repository for documentation and future review.
