## Utilizando o módulo user

```shell
$ ansible clients \
-u vagrant \
-i inventory/hosts-variables \
-m user \
-a "name=rafael
shell=/bin/bash
append=yes" \
--become
```