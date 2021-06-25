# How to Fix Minimal BASH Like Line Editing is Supported GRUB Error In Linux?

GNU GRUB (Stands for GNU GRand Unified Bootloader) is a boot loader package. 
It is a part of the GNU project. It is the reference implementation of the Free
Software Foundation’s Multiboot Specification, that provides a user the choice 
to boot one of multiple operating systems installed on a computer. It also 
provides the facility to choose a specific kernel configuration available on a
specific OS partition. The Minimal BASH Like Line Editing is Supported GRUB 
Error In Linux looks like as shown below:

* image goes here ...

## Steps to Solve Minimal BASH..GRUB Error

***Step 1: Find the partition in which your Linux partition is stored. 
We can use the ls command to check for available partitions and their filesystem. 
Linux operating systems usually use ext2/ext3/ext4 filesystems.***

The command below shows us all existing partitions.

```
grug> ls

```
* image demonstrating ... goes here ...

***Note: If you don’t know which partition has Linux OS then you can check with
the ls command as follows:***

```
grug> ls (hdX,Y)

```
Here, X is disk number and Y is partition name. 
For Example: grub> ls (hd0, gpt3) or grub> ls (hd1, msdos5)

* image showcasing output goes here ...

***Step 2: After knowing the partition, set root and prefix variables:***
* root: Variable which points where the entire Linux OS is installed.
* prefix: Variable which points where the GRUB is installed.

```
grub> set root=(hdX, Y)
grub> set prefix=(hdX, Y)/boot/grub

```
***Step 3: Install normal module and load it:***
normal: Linux mod file (linux.mod) used to load kernal. 
Command used to install mod : insmod

```
grub> insmod normal
grub> normal

```

***Step 4: Update GRUB. After entering your Linux OS, reinstall GRUB and update
it. Open the terminal and enter following commands:***

```
sudo grub-install /dev/sdXY
sudo update-grub

```
Here, X is disk number and Y is partition number of EFI partition. If you don’t
know which partition is an EFI partition, use Disks or GParted to check.
Optionally, type the following in your terminal:

```
lsblk

``` 
* image showcasing output goes here

***Restart your PC and the Minimal GRUB error will be solved!!***

# Summary of Commands
```
grub> ls
grug> ls (hdX,Y)                    # confirm parition containg linux filesystem
grub> set root=(hdX, Y)             # set root
grub> set prefix=(hdX, Y)/boot/grub # set prefix
grub> insmod normal                 # install normal module
grub> normal                        # load normal module

# After restart
sudo grub-install /dev/sdXY         # reinstall grub on EFI-partion
sudo update-grub                    # update grub
```
