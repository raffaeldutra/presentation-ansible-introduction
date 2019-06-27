## Playbooks

Playbooks podem ser utilizados para gerenciar configurações em máquinas remotas.

Como descrito no próprio site do [Ansible](https://docs.ansible.com/ansible/latest/user_guide/playbooks.html), se os módulos do Ansible são ferramentas, playbooks são as instruções do manual de como montá-las.

Primeiramente vamos criar o arquivo de configuração do Ansible, arquivo `ansible.cfg`.

```shell
[defaults]
host_key_checking = False
inventory = inventory/hosts
```

E o arquivo de hosts:

```shell
[clients]
192.168.33.200 ansible_ssh_private_key_file=../.vagrant/machines/client-1/virtualbox/private_key
192.168.33.201 ansible_ssh_private_key_file=../.vagrant/machines/client-2/virtualbox/private_key

[clients:vars]
ansible_python_interpreter="/usr/bin/python3"
ansible_user="vagrant"
```

[Criando o primeiro playbook](first-playbook.yml)