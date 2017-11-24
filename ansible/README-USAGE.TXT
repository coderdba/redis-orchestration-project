============================================================
  ANSIBLE PLAYBOOK EXECUTION FOR VARIOUS REDIS TASKS
============================================================
Run these on the Ansible control node

# To install redis
ansible-playbook -s redis_install.yml -u vagrant

# To create a new instance of redis
#    Pass port as the parameter
ansible-playbook -s redis_std_inst_new.yml -u vagrant --extra-vars="redis_port=6379"
