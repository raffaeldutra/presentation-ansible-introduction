## Ajustando arquivo de hosts com variáveis

Vamos atualizar o arquivo `hosts-clients` com o conteúdo abaixo.

A ideia aqui é utilizarmos grupos para chamar máquinas de um mesmo contexto. Máquinas de um mesmo contexto podem conter variáveis repetidads e por isso utilizamos o conceito de `grupo:vars`.

```shell
[clients]
192.168.33.200 ansible_ssh_private_key_file=.vagrant/machines/client-1/virtualbox/private_key
192.168.33.201 ansible_ssh_private_key_file=.vagrant/machines/client-2/virtualbox/private_key

[clients:vars]
ansible_python_interpreter="/usr/bin/python3"
ansible_user="vagrant"
```

[Revisitando o módulo ping](ping-clean.md)