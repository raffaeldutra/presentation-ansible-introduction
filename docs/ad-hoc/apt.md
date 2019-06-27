## Módulo apt

Utilizar o módulo `apt` segue a mesma linha de qualquer módulo, respeitando sempre é claro quais são os argumentos obrigatórios de cada módulo.

```shell
$ ansible clients \
-m apt \
-a \
"name=curl \
 state=present"
 ```

[Utilizando o módulo user](user.md)