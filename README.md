# VM Lab Exercises

## Exercise 1: VMware OVF Export/Import
- Created VM in VMware Workstation
- Exported full config + disk as OVF  
- Imported to new VM ✓ boots successfully

## Exercise 2: Vagrant Auto-Provisioning
**Files:** `Vagrantfile`, `provision.sh`
- Ubuntu 22.04 VM with 2GB RAM, 2 CPUs
- Installs: `vim`, `git`, `curl`
- Creates `demouser`, enables SSH
- Proof: `/home/vagrant/PROVISIONED.txt`

## Exercise 3: Cloud-Init First Boot
**File:** `cloud-init.yaml`  
**Configures:**
- Hostname: `cloudinit-demo`
- User: `ciuser` (sudo access)  
- Packages: `nginx`, `git`, `htop`, `curl`, `wget`, `net-tools`
- Service: `nginx` (enabled + running)
- Files: `/home/ciuser/cloudinit-done.txt`, `/etc/motd.tail`

**Tested:** Multipass VM - all verified and working :)
