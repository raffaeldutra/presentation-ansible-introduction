## Configurando chaves nos hosts

> Para rodar os comandos abaixo é assumido que suas chaves públicas estejam em `$HOME/.ssh/authorized_keys` das respectivas máquinas localizadas no arquivo [hosts que usaremos como exemplo](/inventory/hosts)

> Copiar sua chave pública para máquina 1:
```shell
$ ssh-add .vagrant/machines/client-1/virtualbox/private_key

$ ssh-copy-id vagrant@192.168.33.200 \
-i .vagrant/machines/client-1/virtualbox/private_key
```

> Copiar sua chave pública para máquina 2:
```shell
$ ssh-add .vagrant/machines/client-2/virtualbox/private_key

$ ssh-copy-id vagrant@192.168.33.201 \
-i .vagrant/machines/client-2/virtualbox/private_key
```

[Revisitando o módulo ping](ping.md)