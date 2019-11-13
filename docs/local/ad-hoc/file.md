## Utilizando o módulo files

Criando um diretório.

```shell
$ ansible clients \
-m file \
-a "state=directory \
    path=/home/vagrant/ansible-diretorio"
```

Criando um link simbólico.

```shell
$ ansible clients \
-m file \
-a "state=link \
    src=/home/vagrant/ansible-diretorio \
    dest=/tmp/ansible-link"
```

Alterando permissões de arquivos e diretórios.

```shell
$ ansible clients \
-m file \
-a "mode=0700 \
    path=/home/vagrant/ansible-diretorio"
```

[Utilizando o módulo apt](apt.md)