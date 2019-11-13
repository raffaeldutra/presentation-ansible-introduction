## Criando o primeiro playbook

Este é o primeiro playbook a ser executado. O playbook tentará instalar o pacote `curl`, porém o pacote já encontra-se instalado, retornando assim o status de *ok=2*.

```shell
---
- hosts: clients
  become: true
  tasks:
  - name: rodando primeiro playbook
    apt:
      name: curl
      state: present
```

Com a seguinte saída:

```shell
PLAY [clients] ****************************************************************************************************************************************************************************

TASK [Gathering Facts] ********************************************************************************************************************************************************************
ok: [192.168.33.200]
ok: [192.168.33.201]

TASK [rodando primeiro playbook] **********************************************************************************************************************************************************
ok: [192.168.33.200]
ok: [192.168.33.201]

PLAY RECAP ********************************************************************************************************************************************************************************
192.168.33.200             : ok=2    changed=0    unreachable=0    failed=0   
192.168.33.201             : ok=2    changed=0    unreachable=0    failed=0   
```

[Criando o segundo playbook](second-playbook.md)