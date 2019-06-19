## Comandos para executar em modo ad-hoc

Rodando o primeiro comando.
É necessário passar algumas configurações, como:

* módulo ping: `-m ping`
* Usuário vagrant que está na Máquina virtual: `-u vagrant`
* Chave privada da máquina do _Vagrant_.
* Interpretador Python da máquina: `-e 'ansible_python_interpreter=/usr/bin/python3'`

```shell
$ ansible 192.168.33.200 \
-m ping \
-u vagrant \
--private-key=.vagrant/machines/client-1/virtualbox/private_key \
-e 'ansible_python_interpreter=/usr/bin/python3'
```

> Para rodar os comandos abaixo é assumido que suas chaves públicas estejam em `$HOME/.ssh/authorized_keys` das respectivas máquinas localizadas no arquivo [hosts que usaremos como exemplo](/inventory/hosts)

> Copiar sua chave pública para máquina 1:
```shell
$ ssh-add .vagrant/machines/client-1/virtualbox/private_key

$ ssh-copy-id vagrant@192.168.33.200 \
-i .vagrant/machines/client-1/virtualbox/private_key
```

> Copiar sua chave pública para máquina 1:
```shell
$ ssh-add .vagrant/machines/client-2/virtualbox/private_key

$ ssh-copy-id vagrant@192.168.33.201 \
-i .vagrant/machines/client-2/virtualbox/private_key
```

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

### Executando comandos remotos

Para executar comandos remotamente é necessário utilizar o a opção `-a` (argument/argumento) e logo em seguida o comando que deseja executar com o binário apontando *em caminho absoluto*.

```shell
$ ansible all \
-u vagrant \
-i inventory/hosts \
-a "/bin/hostname" \
-e 'ansible_python_interpreter=/usr/bin/python3'
```
Com a seguinte saída:

```shell
192.168.33.200 | CHANGED | rc=0 >>
client-1

192.168.33.201 | CHANGED | rc=0 >>
client-2
```


### Utilizando módulo shell

```shell
ansible all \
-u vagrant \
-i inventory/hosts \
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