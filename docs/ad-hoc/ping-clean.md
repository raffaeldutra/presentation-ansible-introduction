## Utilizando módulo ping

Rodando o módulo (opção `-m`) ping em todos os hosts

```shell
$ ansible clients \
-m ping \
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

```shell
$ ansible clients \
-m shell \
-a "ls -la /tmp"
```

Com a seguinte saída:

```shell
192.168.33.200 | CHANGED | rc=0 >>
total 48
drwxrwxrwt 12 root    root    4096 Jun 25 02:43 .
drwxr-xr-x 24 root    root    4096 Jun 24 02:29 ..
drwxrwxrwt  2 root    root    4096 Jun 24 02:29 .ICE-unix
drwxrwxrwt  2 root    root    4096 Jun 24 02:29 .Test-unix
drwxrwxrwt  2 root    root    4096 Jun 24 02:29 .X11-unix
drwxrwxrwt  2 root    root    4096 Jun 24 02:29 .XIM-unix
drwxrwxrwt  2 root    root    4096 Jun 24 02:29 .font-unix
lrwxrwxrwx  1 vagrant vagrant   31 Jun 24 02:50 ansible-link -> /home/vagrant/ansible-diretorio
drwx------  3 vagrant vagrant 4096 Jun 25 02:43 ansible_command_payload_k6g8_lu9
drwx------  2 root    root    4096 Jun 24 02:29 netplan_g06ewjx7
drwx------  2 root    root    4096 Jun 24 02:29 netplan_iyhn25qe
drwx------  2 vagrant vagrant 4096 Jun 24 02:29 netplan_numnbewm
drwx------  3 root    root    4096 Jun 25 02:36 systemd-private-b939f234660940e688ad36f5d4f998a0-systemd-resolved.service-LKWmLQ

192.168.33.201 | CHANGED | rc=0 >>
total 48
drwxrwxrwt 12 root    root    4096 Jun 25 02:43 .
drwxr-xr-x 24 root    root    4096 Jun 24 02:31 ..
drwxrwxrwt  2 root    root    4096 Jun 24 02:30 .ICE-unix
drwxrwxrwt  2 root    root    4096 Jun 24 02:30 .Test-unix
drwxrwxrwt  2 root    root    4096 Jun 24 02:30 .X11-unix
drwxrwxrwt  2 root    root    4096 Jun 24 02:30 .XIM-unix
drwxrwxrwt  2 root    root    4096 Jun 24 02:30 .font-unix
lrwxrwxrwx  1 vagrant vagrant   31 Jun 24 02:50 ansible-link -> /home/vagrant/ansible-diretorio
drwx------  3 vagrant vagrant 4096 Jun 25 02:43 ansible_command_payload_gatr6ivq
drwx------  2 root    root    4096 Jun 24 02:30 netplan_g1tdgtli
drwx------  2 root    root    4096 Jun 24 02:30 netplan_ngk0d5r7
drwx------  2 vagrant vagrant 4096 Jun 24 02:30 netplan_z75pxeg5
drwx------  3 root    root    4096 Jun 25 02:32 systemd-private-86e932571e4d4b65ad3000b8839fbe19-systemd-resolved.service-y5wc9K
```

[Utilizando o módulo user](user.md)