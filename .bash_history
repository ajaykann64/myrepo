kill -9 18734
exit
yum -y update
init 0
init 5
init 3
ifconfig -a |more
systemctl get-defauly
systemctl get-default
ifconfig -a |more
systemctl set-default multi-user.target
init 6
ifconfig -a |more
init 0
yum install ansible
clear
python
ansible --version
cd /etc/ansible/
ls
cat ansible.cfg 
hostname
hostname anible-master
hostname
cat /etc/ansible/
ls
cat ansible.cfg 
hostnamectl set-hostname --static ansible-master
hostname
reboot
ls
cat /root/hosts
cat /etc/hosts
ip a
history
cd /home/masteringansible/03\ -\ Ansible\ Playbooks\,\ Advanced\ Topics/03\ -\ register\ and\ when/01/
ls
cat register_playbook.yml 
vi hosts 
cat register_playbook.yml 
ansible-playbook register_playbook.yml 
vi hosts 
ansible-playbook register_playbook.yml 
vi hosts 
ansible-playbook register_playbook.yml 
ssh centos-4
vi /etc/hosts
ansible-playbook register_playbook.yml 
vi hosts 
ansible-playbook register_playbook.yml 
vi hosts 
vi /etc/hosts
vi hosts 
cd ../05/
ls
vi hosts 
vi register_playbook.yml 
ansible-playbook register_playbook.yml 
vi register_playbook.yml 
ansible centos-2 -m setup 
ansible centos-2 -m setup | more
vi /etc/hosts
ansible centos-2:2222 -m setup | more
vi hosts 
ansible-playbook register_playbook.yml 
vi hosts 
vi register_playbook.yml 
ip a
vi /etc/hosts
ssh centos-1
ssh centos-1 -p 2222
ls
vi hosts
cd ../01/
vi hosts
ansible-playbook register_playbook.yml 
vi hosts
vi /etc/hosts
ansible-playbook register_playbook.yml 
centos-4                   : ok=2    changed=1    unreachable=0    failed=0
[root@ansible-master 05]# vi register_playbook.yml
[root@ansible-master 05]# ansible centos-2 -m setup
[root@ansible-master 05]# ansible centos-2 -m setup | more
centos-2 | UNREACHABLE! => {
    "changed": false,
    "msg": "Failed to connect to the host via ssh: ssh: connect to host centos-2 port 2222: No route to host\r\n",
    "unreachable": true
}
[root@ansible-master 05]# vi /etc/hosts
[root@ansible-master 05]# ansible centos-2:2222 -m setup | more
 [WARNING]: Could not match supplied host pattern, ignoring: centos-2:2222
 [WARNING]: No hosts matched, nothing to do
[root@ansible-master 05]# vi hosts
[root@ansible-master 05]# ansible-playbook register_playbook.yml
PLAY [linux] ***********************************************************************************************************************************************************
TASK [Gathering Facts] *************************************************************************************************************************************************
fatal: [centos-2]: UNREACHABLE! => {"changed": false, "msg": "Failed to connect to the host via ssh: ssh: connect to host centos-2 port 2222: No route to host\r\n", "unreachable": true}
ok: [centos-4]
ok: [centos-3]
TASK [Exploring register] **********************************************************************************************************************************************
skipping: [centos-3]
skipping: [centos-4]
        to retry, use: --limit @/home/masteringansible/03 - Ansible Playbooks, Advanced Topics/03 - register and when/05/register_playbook.retry
PLAY RECAP *************************************************************************************************************************************************************
centos-2                   : ok=0    changed=0    unreachable=1    failed=0
centos-3                   : ok=1    changed=0    unreachable=0    failed=0
centos-4                   : ok=1    changed=0    unreachable=0    failed=0
[root@ansible-master 05]# vi hosts
[root@ansible-master 05]# vi register_playbook.yml
[root@ansible-master 05]#
cd ../03/
ls
vi register_playbook.yml 
cd
cd /home/masteringansible/03\ -\ Ansible\ Playbooks\,\ Advanced\ Topics/03\ -\ register\ and\ when/02
ls
vi register_playbook.yml 
vi _playbook.yml 
ansible-playbook  _playbook.yml 
vi host
vi hosts
ansible-playbook  _playbook.yml 
vi _playbook.yml 
ansible-playbook  _playbook.yml 
vi _playbook.yml 
ansible-playbook  _playbook.yml 
vi _playbook.yml 
pwd
cd ../01/
ls
vi register_playbook.
vi register_playbook.yml 
vi myplay.yml
pwd
cd ../03/
ls
cd ..
cd ../03\ -\ register\ and\ when/03/
ls
vi register_playbook.yml 
cd ..
ls
cd 08\ -\ Blocks/
ls
cd 01/
ls
vi blocks_playbook.yml 
cd ../02/
ls
vi blocks_playbook.yml 
cd ../03/
ls
vi blocks_playbook.yml 
pwd
vi blocks_playbook.yml 
pwd
cd
git
git log
ls
cd masteringansible/
ls
git config --get remote.origin.url
ls
cd 03\ -\ Ansible\ Playbooks\,\ Advanced\ Topics/09\ -\ Ansible\ Vault/01
ls
cat group_vars/
ls
cd group_vars/
ls
cat centos
cat dns 
cd ..
ls
cd host_vars/
ls
cat centos1 
cd ..
ls
cat ansible.cfg 
ansible-vault encrypt_string --ask-valut-pass --name 'ansible_become_pass' 'password'
ls
ghost encrypt_string
dust encrypt_string
vi encrypt_string
ansible-vault encrypt_string --ask-valut-pass --name 'ansible_become_pass' 'password'
ls
ansible-vault encrypt_string --ask-valut-pass --name 'ansible_become_pass' 'password'
ansible-vault encrypt_string --ask-vault-pass --name 'ansible_become_pass' 'password'
ls
rm encrypt_string 
ls
cd group_vars/
ls
cat centos 
cd ..
ls
cat ansible.cfg 
cd host_vars/
ls
cat centos1 
cat ubuntu-c 
cd ..
ls
ansible-vault encrypt_string --ask-vault-pass --name 'ansible_become_pass' 'password'
cd host_vars/
ls
cat centos1 
ls
cat ubuntu-c 
cd ..
cd group_vars/
ls
cat ubuntu 
cd ..
ls
vi hosts 
cd ../02/
ls
cat vault_playbook.yml 
Wq
ls
cat external_vault_vars.yml 
ansible-vault encrypt_string --ask-vault-pass --name 'ansible_become_pass' 'password'
cat external_vault_vars.yml 
cat vault_playbook.yml 
wq
ls
ansible-vault  --ask-vault-pass encrypt external_vault_vars.yml
cat external_vault_vars.yml 
ansible-playbook external_vault_vars.yml 
ansible-playbook external_vault_vars.yml --ask-valut-pass
ansible-playbook external_vault_vars.yml --ask-vault-pass
ansible all --ask-valut-pass -m debug -a 'var=ansible_become_pass'
ansible all --ask-vault-pass -m debug -a 'var=ansible_become_pass'
vi hosts 
ansible all --ask-vault-pass -m debug -a 'var=ansible_become_pass'
ls
cat external_vault_vars.yml 

ls
vi centos 
ansible-playbook vault_playbook.yml  --ask-vault-pass
cd ..
ansible-playbook vault_playbook.yml  --ask-vault-pass
ansible-vault --ask-vault-pass encrypt external_vault_vars.yml
ansible-vault encrypt_string --ask-vault-pass --name 'ansible_become_pass' 'password'[root@ansible-master 02]# ansible-vault encrypt_string --ask-vault-pass --name 'ansible_become_pass' 'password'
ansible-vault --ask-vault-pass view external_vault_vars.yml
cd ..
cd ../10\ -\ Creating\ Custom\ Modules/
ls
git clone https://github.com/ansible/ansible.git
ls
ls git clone https://github.com/ansible/ansible.git
ls
mv ansible/ /home/
ls
cd
ls
cd /home/ansible/
ls
cd
ls
cd /home/masteringansible/
ls
cd 03\ -\ Ansible\ Playbooks\,\ Advanced\ Topics/
ls
cd 01\ -\ Ansible\ Playbook\ Modules/
ls
cd 01
ls
cat set_fact_playbook.yml 
ls
vi hosts
vi test.sh
./test.sh
ls l
ls -l
chmod x test.sh 
chmod +x test.sh 
ls -l
./test.sh
vi set_fact_playbook.yml 
ansible-playbook set_fact_playbook.yml 
vi set_fact_playbook.yml 
ansible-playbook set_fact_playbook.yml 
ls
ansible-playbook set_fact_playbook.yml 
vi set_fact_playbook.yml 
ansible-playbook set_fact_playbook.yml 
vi hosts
ls
cd
source /home/ansible/hacking/env-setup
ls
cd /home/masteringansible/03\ -\ Ansible\ Playbooks\,\ Advanced\ Topics/10\ -\ Creating\ Custom\ Modules/
cd 01
ls
/root/src/ansible/hacking/test-module -m ./icmp.sh
ls
cd
cd /home/ansible/
ls
cd hacking/
ls
cd
cd /home/masteringansible/04\ -\ Structuring\ Ansible\ Playbooks/01\ -\ Using\ Include\ and\ Import/01/
ls
vi include_playbook.yml 
vi play1_task2.yml 
book.yml  group_vars  hosts  host_vars  icmp.sh
[root@ansible-master 01]# /root/src/ansible/hacking/test-module -m ./icmp.sh
-bash: /root/src/ansible/hacking/test-module: No such file or directory
cd
cd /home/masteringansible/04\ -\ Structuring\ Ansible\ Playbooks/01
ls
cd /home/masteringansible/04\ -\ Structuring\ Ansible\ Playbooks/02\ -\ Using\ Tags/
ls
cd 01
ls
vi nginx_playbook.yml 
cd ../03/
ls
vi nginx_playbook.yml 
vi hosts
vi nginx_playbook.yml 
ansible-playbook  nginx_playbook.yml --tags 'install-epel'
vi nginx_playbook.yml 
ansible-playbook  nginx_playbook.yml --tags 'install-epel'
ssh centos-2
ssh centos-2 -p 2222
cd /home/masteringansible/04\ -\ Structuring\ Ansible\ Playbooks/03\ -\ Using\ Roles/01/
ls
yum install tree
tree
cat nginx_playbook.yml 
wq
cd ../02/
ls
tree
ansible-galaxy init /etc/ansible/roles/apache --offline
tree init /etc/ansible/roles/apache 
ls
cd /etc/ansible/roles/apache
ls
cd tasks/
ls
vi main.yml 
touch install.yml
touch configure.yml
ls
vi install.yml 
vi main.yml 
pwd
cd ..
pwd
cd ..
pwd
vi ansible.yml
hostname
ip a
systemctl stop firewalld
systemctl stop selinux
systemctl status selinux
systemctl status se
systemctl status firewalld
systemctl disable firewalld
systemctl status firewalld
se status
sestatus
vi /etc/selinux/config 
systemctl status firewalld
reboot
