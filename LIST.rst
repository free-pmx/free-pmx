List of posts
=============

-  | `Upgrades and repositories <https://free-pmx.org/guides/apt-update/>`__ - *Last updated 27 Sep 2025*
   | Set up necessary APT repositories upon fresh Proxmox VE install without any subscription license. Explainer on apt, apt-get, upgrade, dist-upgrade and full-upgrade.

-  | `Proxmox subscription nag removal <https://free-pmx.org/guides/proxmox-nag/>`__ - *Last updated 27 Sep 2025*
   | What exactly brings up the ‘No valid subscription’ notice and how to eliminate it, including with automation. No obscure regular expressions that might corrupt the system in the future.

-  | `DHCP setup of a single node <https://free-pmx.org/guides/dhcp-single/>`__ - *Last updated 21 Sep 2025*
   | Set up your sole node Proxmox VE install as any other server - with DHCP assigned IP address. Useful when IPs are managed as static reservations or dynamic environments. No pesky scripting involved.

-  | `DHCP setup of a cluster <https://free-pmx.org/guides/dhcp-cluster/>`__ - *Last updated 21 Sep 2025*
   | Keep control of the entire cluster pool of IPs from your networking plane. Avoid potential IP conflicts and streamline automated deployments with DHCP managed, albeit statically reserved assignments.

-  | `ZFSBootMenu setup for Proxmox VE <https://free-pmx.org/guides/zfs-boot/>`__ - *Last updated 18 Aug 2025*
   | A complete feature-set bootloader for ZFS on root install. It allows booting off multiple datasets, selecting kernels, creating snapshots and clones, rollbacks and much more - as much as a rescue system would.

-  | `Restore entire host from backup <https://free-pmx.org/guides/host-restore/>`__ - *Last updated 18 Aug 2025*
   | Restore a full root filesystem of a backed up Proxmox node - use case with ZFS as an example, but can be appropriately adjusted for other systems. Approach without obscure tools. Simple tar, sgdisk and chroot. A follow-up to the previous post on backing up the entire root filesystem offline from a rescue boot.

-  | `A neater Proxmox no subscription setup <https://free-pmx.org/insights/no-subscription/>`__ - *Last updated 17 Aug 2025*
   | Be aware of security implications that come with third-party setup tools. Compare Debian-backed approach with innocuously looking scripts and learn what actually makes the difference.

-  | `Backup Cluster configuration - /etc/pve <https://free-pmx.org/guides/configs-backup/>`__ - *Last updated 21 May 2025*
   | Backup cluster-wide configuration virtual filesystem in a safe manner, plan for disaster recovery for the case of corrupt database. A situation more common than anticipated.

-  | `Proxmox and code reviews <https://free-pmx.org/insights/code-reviews/>`__ - *Last updated 21 May 2025*
   | How to corrupt cluster configuration without doing anything. When a data consistency related bug goes undiscovered for well over a decade, it’s time for a second look at code review practices.

-  | `A glimpse at Proxmox Quality Assurance <https://free-pmx.org/insights/quality-assurance/>`__ - *Last updated 21 May 2025*
   | What kind of testing procedures do they use at Proxmox and how does your bug-reporting fit into it? How consistent and thorough is regression testing before users get hold of a public package?

-  | `How Proxmox VE shreds your SSDs <https://free-pmx.org/insights/pmxcfs-writes/>`__ - *Last updated 09 May 2025*
   | Debug-level look at what exactly is wrong with the crucial component of every single Proxmox node, including non-clustered ones. History of regressions tracked to decisions made during increase of size limits.

-  | `Why Proxmox offer full feature set for free <https://free-pmx.org/insights/cost-free/>`__ - *Last updated 28 Apr 2025*
   | Everything has its cost. Running off repositories that only went through limited internal testing takes its toll on the user. Be aware of the implications.

-  | `How to audit a Debian package <https://free-pmx.org/guides/deb-audit/>`__ - *Last updated 11 Apr 2025*
   | Auditing a Debian package is not difficult, especially when it contains no compiled code and everything lies out there in the open. A pre/post installation/removal scripts are very transparent if well-written.

-  | `Proxmox VE Live System build <https://free-pmx.org/guides/live-build/>`__ - *Last updated 14 Mar 2025*
   | Build a live system that boots the same kernel and provides necessary compatible tooling as a regular install - with a compact footprint. Use it as a rescue system, custom installer springboard and much more - including running full PVE node disk-less.

-  | `Turning a cluster member into a standalone node <https://free-pmx.org/guides/node-uncluster/>`__ - *Last updated 28 Feb 2025*
   | Making a node that was once part of a cluster standalone again can be counter-intuitive compared to simply removing nodes from list of cluster members.

-  | `Fragile Proxmox cluster management <https://free-pmx.org/insights/cluster-fragile/>`__ - *Last updated 28 Feb 2025*
   | Proxmox Cluster filesystem builds on Corosync, but there are oddities in the PVE configuration. The support for cluster management is imperfect and can bring inexplicable situations which deserve a better user approach.

-  | `SSH certificates setup <https://free-pmx.org/guides/ssh-certs/>`__ - *Last updated 15 Feb 2025*
   | PKI SSH setups for complex clusters or virtual guests should be a norm, one which improves security, but also manageability. With a scripted setup, automated key rotations come as a bonus.

-  | `Public Key Infrastructure with Secure Shell <https://free-pmx.org/insights/ssh-pki/>`__ - *Last updated 09 Feb 2025*
   | Secure your SSH infrastructure from the very first boot. Rotate keys and never trust a previously unknown machine. Never pass through a key-not-known prompt and do not get used to the identification-changed warning with a remote host.

-  | `ERROR: dpkg processing archive during apt install <https://free-pmx.org/guides/error-dpkg-conflict/>`__ - *Last updated 31 Jan 2025*
   | Conflicts in files as packaged by Proxmox and what finds its way into underlying Debian install do arise. Pass proper options to the apt command for remedy.

-  | `Verbose boot with GRUB <https://free-pmx.org/guides/grub-verbose/>`__ - *Last updated 25 Jan 2025*
   | Most PVE boots are entirely quiet. Avoid issues with troubleshooting non-booting system later by setting verbose boots. If you are already in trouble, there is a remedy as well.

-  | `Taking advantage of ZFS on root <https://free-pmx.org/insights/zfs-root/>`__ - *Last updated 24 Jan 2025*
   | A look at limited support of ZFS by Proxmox VE stock install. A primer on ZFS basics insofar ZFS as a root filesystem setups - snapshots and clones, with examples. Preparation for ZFS bootloader install with offline backups all-in-one guide.

-  | `Passwordless SSH can lock you out <https://free-pmx.org/insights/ssh-lockout/>`__ - *Last updated 21 Jan 2025*
   | Not so intuitive cascade of events may lead to inability to SSH connect to a node with otherwise healthy networking setup due to inaccessible keys location.

-  | `Rescue or backup entire host <https://free-pmx.org/guides/host-backup/>`__ - *Last updated 06 Jan 2025*
   | Access PVE host root filesystem when booting off Proxmox installer ISO. A non-intuitive case of ZFS install not supported by regular Live Debian. Fast full host backup (no guests) demonstration resulting in 1G archive that is sent out over SSH. This will allow for flexible redeployment in a follow-up guide. No proprietary products involved, just regular Debian tooling.

-  | `Why Proxmox VE shreds your SSDs <https://free-pmx.org/insights/pve-ssds/>`__ - *Last updated 02 Jan 2025*
   | Quantify the idle writes of every single Proxmox node that contribute to premature failure of some SSDs despite their high declared endurance.

-  | `Getting rid of systemd-boot <https://free-pmx.org/guides/systemd-boot/>`__ - *Last updated 01 Jan 2025*
   | Ditch the unexpected bootloader from ZFS install on a UEFI system without SecureBoot. Replace it with the more common GRUB and remove superfluous BIOS boot partition.

-  | `Making sense of Proxmox bootloaders <https://free-pmx.org/insights/bootloaders/>`__ - *Last updated 01 Jan 2025*
   | What is the bootloader setup determined by and why? What is the role of the Proxmox boot tool? Explore the quirks behind the approach of supporting everything.

-  | `Proxmox software repositories <https://free-pmx.org/insights/pve-repos/>`__ - *Last updated 28 Dec 2024*
   | What exactly do you get from the non-subscriber and freely available package repository? And what are the differences to the one meant for public testing only. Almost none.

-  | `The pmxcfs mountpoint of /etc/pve <https://free-pmx.org/insights/pmxcfs-mount/>`__ - *Last updated 08 Dec 2024*
   | Understand the setup of virtual filesystem that holds cluster-wide configurations and has a not-so-usual behaviour - unlike any other regular filesystem.

-  | `The Proxmox Corosync fallacy <https://free-pmx.org/insights/corosync-fallacy/>`__ - *Last updated 08 Dec 2024*
   | Distinguish the role of Corosync in Proxmox clusters from the rest of the stack and appreciate the actual reasons behind unexpected reboots or failed quorums.

-  | `Some lesser known quorum options <https://free-pmx.org/insights/quorum-options/>`__ - *Last updated 01 Dec 2024*
   | When considering a Quorum Device for small clusters, be aware of other valid alternatives that were taken off the list only due to High Availability stack concerns.

-  | `The Proxmox cluster filesystem build <https://free-pmx.org/guides/pmxcfs-build/>`__ - *Last updated 30 Nov 2024*
   | The bespoke filesystem that is the heart of Proxmox stack compiles from its sources in C. Necessary when changing hardcoded defaults or debugging unexplained quirks.

-  | `The Proxmox cluster probe <https://free-pmx.org/guides/cluster-probe/>`__ - *Last updated 29 Nov 2024*
   | Experimental setup that can in fact serve as a probe to the health of a cluster. Unlike e.g. Quorum Device, it mimics an actual full fledged node without the hardware or architecture requirements.

-  | `WARNING: Setting locale failed <https://free-pmx.org/guides/warning-locale/>`__ - *Last updated 27 Nov 2024*
   | Common Perl warning during upgrades regarding locale settings lies in AcceptEnv directive of SSH config. A better default for any Proxmox VE install, or any Debian-based server in fact.

-  | `Container shell with no password <https://free-pmx.org/guides/container-shell/>`__ - *Last updated 25 Nov 2024*
   | Do not set passwords on container users, get shell with native LXC tooling taking advantage of the host authentication. Reduce attack surfaces of exposed services.

-  | `ERROR: failed to load local private key <https://free-pmx.org/guides/error-pve-ssl-key/>`__ - *Last updated 22 Nov 2024*
   | Misleading error message during failed boot-up of a cluster node that can send you chasing a red herring. Recognise it and rectify the actual underlying issue.

-  | `How to disable HA permanently <https://free-pmx.org/guides/ha-disable/>`__ - *Last updated 21 Nov 2024*
   | Do away with the High Availability stack in a safe manner. Avoid the risk of reboots when troubleshooting suspected hardware woes. Particularly useful for frequent loss-of-quorum scenarios.

-  | `How to disable HA for maintenance <https://free-pmx.org/guides/ha-maintenance/>`__ - *Last updated 21 Nov 2024*
   | Avoid unexpected non-suspect node reboot during maintenance in any High Availability cluster. No need to wait for any grace periods until it becomes inactive by itself, no uncertainties.

-  | `The Proxmox time bomb watchdog <https://free-pmx.org/insights/watchdog-mux/>`__ - *Last updated 21 Nov 2024*
   | The unexpected reboot you have encountered might have had nothing to do with any hardware problem. Details on specific Proxmox watchdog setup missing from official documentation.

-  | `Improved SSH with hidden regressions <https://free-pmx.org/insights/ssh-regressions/>`__ - *Last updated 10 Nov 2024*
   | Over 10 years old bug finally got fixed. What changes did it bring and what undocumented regressions to expect? How to check your current install and whether it is affected?

-  | `Extract Cluster configuration - /etc/pve <https://free-pmx.org/guides/configs-extract/>`__ - *Last updated 02 Nov 2024*
   | Recover individual cluster configuration without need for a bogus node. Both from previous backup or a corrupt database. The source does not need to originate from the same cluster.

*As of 27 Sep 2025.*
