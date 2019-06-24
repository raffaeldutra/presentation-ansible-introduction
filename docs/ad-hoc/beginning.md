## Pingando máquinas

Rodando o primeiro comando.
É necessário passar algumas configurações, como:

* módulo ping: `-m ping`
* Usuário vagrant que está na Máquina virtual: `-u vagrant`
* Chave privada da máquina do _Vagrant_: ``
* Interpretador Python da máquina: `-e 'ansible_python_interpreter=/usr/bin/python3'`

Pingando a máquina 192.168.33.200.
 
```shell
$ ansible 192.168.33.200 \
-m ping \
-u vagrant \
--private-key=.vagrant/machines/client-1/virtualbox/private_key \
-e 'ansible_python_interpreter=/usr/bin/python3'
```

Pingando a máquina 192.168.33.201.
 
```shell
$ ansible 192.168.33.201 \
-m ping \
-u vagrant \
--private-key=.vagrant/machines/client-2/virtualbox/private_key \
-e 'ansible_python_interpreter=/usr/bin/python3'
```

[Configurando chaves](configuring-keys.md)