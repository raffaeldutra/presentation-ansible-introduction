## Módulo apt

```shell
ansible localhost -m apt -a \
"name=curl \
 state=present"
 ```