### Utilizando módulo shell

```shell
ansible all \
-u vagrant \
-m shell \
-a "hostname" \
-e 'ansible_python_interpreter=/usr/bin/python3'
```

Com a seguinte saída:

```shell
192.168.33.200 | CHANGED | rc=0 >>
client-1

192.168.33.201 | CHANGED | rc=0 >>
client-2
```

[Utilizando o módulo user](user.md)