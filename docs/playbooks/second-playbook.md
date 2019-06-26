## Criando o segundo playbook

Este playbook irá instalar o pacote `iptraf`, onde basicamente trocamos apenas o pacote que desejamos instalar retornandoo status *ok=1* e *changed=1*.

```shell
---
- hosts: clients
  become: true
  tasks:
  - name: rodando segundo playbook
    apt:
      name: iptraf
      state: present
```

Com a seguinte saída:

```shell
PLAY [clients] ****************************************************************************************************************************************************************************

TASK [rodando segundo playbook] ***********************************************************************************************************************************************************
changed: [192.168.33.200]
changed: [192.168.33.201]

PLAY RECAP ********************************************************************************************************************************************************************************
192.168.33.200             : ok=1    changed=1    unreachable=0    failed=0   
192.168.33.201             : ok=1    changed=1    unreachable=0    failed=0   
```