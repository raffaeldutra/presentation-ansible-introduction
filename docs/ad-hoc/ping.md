## Utilizando módulo ping

Rodando o módulo (opção `-m`) ping em todos os hosts

```shell
$ ansible all \
-m ping \
-u vagrant \
-i inventory/hosts \
-e 'ansible_python_interpreter=/usr/bin/python3'
```

Com a seguinte saída:

```shell
192.168.33.201 | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
192.168.33.200 | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
```

Rodando o módulo (opção -m) ping em todos os hosts se tornando _root_ (`--become`).
> sudo sempre é o método padrão

```shell
$ ansible all \
-m ping \
-u vagrant \
-i inventory/hosts \
--become \
-e 'ansible_python_interpreter=/usr/bin/python3'
```

Com a seguinte saída:

```shell
192.168.33.200 | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
192.168.33.201 | SUCCESS => {
    "changed": false, 
    "ping": "pong"
}
```

[Utilizando o módulo file](file.md)