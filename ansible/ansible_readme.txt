Why Ansible?
*Ansible is Push mechanism model
ex: install packages
Execute and push the configuration to multiple servers

*Agentless model
Not master slave architecture

*dynamic inventory
Auto detect the new instance and set the configuration and will management automatically

*pretty easy with windows and linux

*ansible is using global language i.e., yaml not need to learn new language like puppet language

Drawbacks:
users with windows OS have slight problems even with advanced ansible modules
debugging mechanism is not upto the mark along with performance while doing parallel executions

Interview questions:
https://www.youtube.com/watch?v=j5PgN0J3d7M&t=4s

playbooks

start with ---

---
- name: install and start nginx
  host: all
  become: root

  tasks:
  - name: install nginx 
    shell: sudo install nginx
		 

  - name: start nginx
    service: 
	 name: start nginx
	 state: started
execute -> ansible-playbook -i inventory file_name
for verbose logs add -vvv
i.e., ansible-playbook -vvv -i inventory file_name


for complicated playbooks use roles

ansible-galaxy role init kubernetes

meta is used for metadata
defaults is to store variable
handlers for handling exception
