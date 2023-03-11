# ASH OS 
This is the build system for the ASH OS project. The build directory is contained in the `archiso` directory. 

### Description for all the folders present inside the build directory
- `airootfs`: Contains the copy of the file system which will be copied over to the RAM when the ISO boots up. 
- `efiboot/loader`: Contains files for EFI booting. 
- `grub`: For booting with grub. 
- `syslinux`: For booting systems with legacy partition tables. 
- `bootstrap_packages.x86_64`: List of packages to use when booting the system in the bootstrap mode. 
- `packages.x86_64`: Contains packages which are installed inside the ISO. 
- `pacman.conf`: Pacman config file used to build the ISO. 
- `profiledef.sh`: Provides configuration for the build system. Also defines the permissions for files in the directory. 


### Files added to airootfs
- `etc/skel/`: The skel directory contains files which are moved over to a new user's home directory. ***Files added in skel:***
  - `.config`: Config files for applications. 
- `pacman.d/`: Holds the mirrorlist for the repositories used to install packages. 
- `group`: File which defines the groups for users. 
- `gshadow`: Shadow file determining the groups.
- `hostname`: Determine the hostname in the live system. 
- `wireplumber/`: Added the config files we used for better sound using wireplumber. 
- `passwd`: Define the user to be used in the live ISO. 
- `shadow`: Define passwords user to be used in the live environment. 

### Installing and building the ISO locally
- To install the dependencies required to build and run the ISO, install the `just` package and run `just install`.
- From the root of the directory, run the command: `just build`
- The built ISO is created in the `out/` directory in the root of the build directory. 
- To run the built ISO, run the command: `just run`.
- Before rebuilding the ISO, be sure to remove the `build` directory by running `just clean`.

### Setting up the local repository used during installation 
- Inside `archiso/pacman.conf`, find the `[custom]`  repository heading. Edit the `Server` field to the location on your system where you have cloned the repository in the format `file:///home/$USER/path/to/the/repo/local-repo/local/repo/`
- Remove all database files from `local-repo/local/repo`  by using `rm` and re-add the database and package files by running the command `repo-add local-repo/local/repo/custom.db.tar.gz local-repo/local/repo/*.pkg.tar.zst` from the root of the repository.
