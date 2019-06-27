## Utilizando o módulo user

Para adicionar usuários, utilizamos o módulo `user`, mas precisamos nos tornar _root_ para realizar o comando e para tal utilizamos o parâmetro `--become`.

```shell
$ ansible clients \
-m user \
-a "name=rafael
shell=/bin/bash
append=yes" \
--become
```

[Utilizando o módulo apt](apt.md)