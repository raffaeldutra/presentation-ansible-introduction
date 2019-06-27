## Criando o arquivo site.yml

Por fim temos um arquivo principal que guarda toda sua infraestrutura.

```shell
---
- hosts: clients
  tasks:
    - name: importando tasks para instalacao de pacotes
      import_tasks: apt.yml

    - name: importando tasks do copy
      import_tasks: copy.yml
```