# ansible-generate-hosts

Ansible script designed to be run locally to gather all Linux hosts on the current network.

An nmap is ran to identify all hosts on the current network(s) and then all Linux machines are exported.

The hostname for each Linux host is then copied to the local machine.

These hostnames are formatted into the same style as a line in an ansible hosts file, and finally these lines are merged into one file.

##Setup

First clone this repository to your local machine and then inside the /ansible-generate-hosts/ folder run the command.

```bash
ansible-playbook -b -K site.yml
```

**After running this playbook your /etc/ansible/hosts file will be changed, please make a backup of this file beforehand to avoid losing any previous data in your hosts file.**

---

To do:

~~Merge all IP files to form the ansible hosts file~~

Add file locations as variables

Add password in gatherhostnames.sh script to automate the entering of the admin passwords
