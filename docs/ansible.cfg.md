## Configurações do Ansible

Ansible procura suas configurações na seguinte ordem:

* ANSIBLE_CONFIG (variável de ambiente, caso presente)
* ansible.cfg (no diretório corrente)
* ~/.ansible.cfg (no diretório $HOME)
* /etc/ansible/ansible.cfg

[Utilizando o módulo file](ad-hoc/file.md)