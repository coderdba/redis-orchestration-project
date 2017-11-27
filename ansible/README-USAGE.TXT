============================================================
  ANSIBLE PLAYBOOK EXECUTION FOR VARIOUS REDIS TASKS
============================================================
Run these on the Ansible control node

-------------------
ENVIRONMENT SETUP
-------------------
ANSIBLE_INVENTORY=/Users/username/work/ansible/hosts

export PATH=~/opt/ruby-2.4.2/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export GEM_HOME=~/opt/ruby-2.4.2/gemhome
export GEM_PATH=~/opt/ruby-2.4.2/lib/ruby/2.4.0:~/opt/ruby-2.4.2/lib/ruby/gems/2.4.0/gems:~/opt/ruby-2.4.2/gemhome
export GEM_ROOT=
#export GEM_ROOT=~/opt/ruby-2.4.2/lib/ruby/gems/2.4.0/gems

----------------------
SSH SETUP for ANSIBLE
----------------------
Follow ansible notes on how to setup ssh keys with the VM/node and the ansible workstation

-------------
INSTALL REDIS
-------------
ansible-playbook -s redis_install.yml -u vagrant

---------------------------------------
NEW STANDALONE REDIS INSTANCE
---------------------------------------
Note: Pass port as the parameter

ansible-playbook -s redis_std_inst_new.yml -u vagrant --extra-vars="redis_port=6379"

-------------
REDIS SERVICE - using sinatra
-------------
$ ruby redis_service_sinatra.rb

Usage using postman:
http://localhost:4567/create/6382   --> where 6382 is the port
