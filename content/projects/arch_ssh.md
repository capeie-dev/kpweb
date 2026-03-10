---
title: "SSH into Arch Linux"
date: 2026-03-10
draft: false
tags: ["ssh", "arch", "linux"]
---
## PT1 - Setting up SSH
Needed to set up SSH on Arch Linux to access it from another computer for comfort purposes. its an ancient beast that has a gtx 1650, learning cuda and thought i'd give prime intellect a whirl.


On a fresh Arch install, the SSH server might not be running yet. We’ll need to grab it and tell it to start up:

#### 1. Grab OpenSSH from the repositories
```sudo pacman -S openssh```

#### 2. Fire up the service and make sure it starts every time you boot
```sudo systemctl enable --now sshd```



#### 2. Finding Your Target

Now you need to know where to point your other computer. Since everything is on the same home network, just run:

```ip addr show```



Look through the list for your Wi-Fi or Ethernet connection. You’re looking for a number that looks like 10.0.0.70 (or something similar starting with 192.168). That's your address!

#### 4. The Handshake

Grab your other laptop (your "Client"), open up a terminal or PowerShell, and type this in:

```ssh username@10.0.0.70```

## PT2 - Fixing the gui boot issue
I had an issue where on boot nvidia and intel drivers would conflict, so i wasnt able to boot into the gui. here's how i fixed it:

#### 1. The Diagnosis

Using my SSH session, I checked the logs for SDDM (the KDE login manager):

```journalctl -u sddm | tail -n 50```


The logs showed a Segmentation Fault in libgallium. This confirmed a driver conflict: the Intel integrated graphics and the NVIDIA dedicated card were failing to coordinate during the boot process.

#### 2. The Solution: Early KMS

The fix required telling the Linux kernel to load the NVIDIA drivers as early as possible (Early Kernel Mode Setting).

##### Step A: Update the Bootloader

I'm using systemd-boot. I had to edit my boot entry in /boot/loader/entries/ and add a specific flag to the options line:
options ... nvidia-drm.modeset=1

This forces the NVIDIA driver to initialize correctly before the GUI attempts to start.

##### Step B: Configure mkinitcpio

I updated the kernel's initial RAM disk configuration to include the NVIDIA modules:

```sudo nano /etc/mkinitcpio.conf```


I added the modules to the list:
```MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)```

Then, I regenerated the images:

```sudo mkinitcpio -P```


#### 3. Syncing the Drivers

To be safe, I ensured the proprietary NVIDIA drivers were fully updated and synced with my current kernel:

```sudo pacman -Syu nvidia nvidia-utils```


#### 4. The Resurrection

With the config files updated and the drivers synced, I issued the final command via SSH:

```sudo reboot```


The laptop whirred, the kernel loaded the NVIDIA modules early, and the KDE Plasma login screen finally appeared. By using SSH as a backdoor, I saved my installation without ever needing to re-install.