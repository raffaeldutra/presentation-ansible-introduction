## Usando repetições

Para instalar vários pacotes de uma única vez, podemos utilizar o seguinte:

```shell
- name: install {{ packages }} package
  apt:
    name: "{{ packages }}"
  vars:
    packages:
      - ntop
      - net-tools
      - nginx
    state: present
```

[Copiando arquivos](copy.md)