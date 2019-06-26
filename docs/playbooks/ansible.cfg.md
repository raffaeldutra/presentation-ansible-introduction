## Configurações do Ansible

Crie o arquivo `ansible.cfg`:

```shell
[defaults]
host_key_checking = False
inventory = inventory/hosts-variables
```

[Utilizando o módulo file](ad-hoc/file.md)