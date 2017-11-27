============================================================
  ANSIBLE PLAYBOOK EXECUTION FOR VARIOUS REDIS TASKS
============================================================
Run these on the Ansible control node

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
