## Configurações do Ansible

Ansible procura suas configurações na seguinte ordem:

* ANSIBLE_CONFIG (variável de ambiente, caso presente)
* ansible.cfg (no diretório corrente)
* ~/.ansible.cfg (no diretório $HOME)
* /etc/ansible/ansible.cfg

Crie o arquivo `ansible.cfg` com o seguinte conteúdo:

```shell
[defaults]
host_key_checking = False
inventory = inventory/hosts
```

[Revisitando o módulo ping](ping.md)