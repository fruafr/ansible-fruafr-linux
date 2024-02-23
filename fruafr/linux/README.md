# Ansible Collection - fruafr.linux

Ansible collection to administer a Linux server

The targets are Debian-based systems (e.g. Ubuntu) and RedHat based systems (e.g. RHEL, CentOS, Fedora and clones) [version 7 and above].

## Roles

This collection contains the following roles:

### etckeeper
- etckeeper_external_repo_setup: Setup etckeeper to use an external repository
- etckeeper_git_commit_push: Etckeeper git commit push routine

### git
- git_commit_push : Git commit push routine

### packages
- packages_base: Ensures a selection of base packages is installed to latest version : 
    * editors (nano, vim), 
    * compression (tar, gzip, zlib), 
    * downloaders (curl, wget), 
    * certificates/encryption (ca-certfificates, gpg/kgpg)
    * sudo
    * file versionning (git)
    * utils (htop, screen, parted)
    * file sharing (rsync, NFS, SMB/CIFS)
- packages_cockpit : Install Cockpit
- packages_etckeeper: Install ETCkeeper
- packages_file_compression : Ensures latest version of file archive tools : zip bzip2 bzip3 p7zip unrar cabextract is installed
- packages_hwsensors : Ensures latest version of hardware sensors / monitoring tools : hwinfo, lmsensors, smartmontools (SMART) is installed
- packages_snapd: Ensures snapd is installed to latest version
- packages_snapd_test : Test snapd with hello-world
- packages_openzfs : Ensures zfs (openzfs) is installed to latest version

### service
- service_cycle: Service is stopped and started (after a pause of 5 seconds)
- service_disabled: Service disabled (won't start at boot time)
- service_enabled: Service enabled (will attempt to start automatically at boot time)
- service_started: Service started (start it if necessary)
- service_stopped: Service stopped (stop it if necessary)

### system
- system_poweroff: Poweroff the system (will loose ansible connection)
- system_reboot : Restart the system (will loose ansible connection)
- system_shutdown : Shut the system down (will loose ansible connection)

### usergroup
- group_absent : Group must be absent (removed if necessary)
- group_present: Group must be present (created if necessary)
- user_absent: User must be absent (Removed if necessary)
- user_group_absent: User must be absent from group (removed if necessary)
- user_group_present: User must be present in group (added to group if necessary)
- user_password_set : Set the user password
- user_present: User must be present (Created if necessary)
- user_ssh_key_gen : Generate a ssh key for the user
- user_sudo_present : User present in sudo group (added if necessary)

### Others
- hello_world : Dummy task - Print hello world

## Note
The author is fully aware that the use of Ansible with some imperative calls (similar to Bash) is an anti-pattern.

## License
GNU 3.0 or later

## Author Information
David Heurtevent <david@heurtevent.org>

## Change History
- 1.2.0 - Added packages_openzfs
- 1.1.0 - Removed cockpit-machines and cockpit-podman from packages_cockpit, removed zfsutils from packages_base, version adapted for RedHat family (beta)
- 1.0.1 - Removed unecessary/unused playbooks
- 1.0.0 - Initial release