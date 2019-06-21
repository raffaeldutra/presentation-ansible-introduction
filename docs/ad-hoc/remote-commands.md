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