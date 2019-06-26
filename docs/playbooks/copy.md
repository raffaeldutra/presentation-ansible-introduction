## Copiando arquivos comuns

Por padrão é copiado arquivos que se encontram no diretório files do diretório corrente,

```shell
- name: copiando arquivos comuns
  copy:
    src: "{{ item.src }}"
    dest: "{{ item.dest }}"
    owner: "{{ user }}"
    group: "{{ group }}"
    mode: "{{ item.mode }}"
  with_items:
    - { src: 'files/arquivo2.txt', dest: '/home/{{ user }}/arquivo2.txt',  mode: 0600 }
    - { src: 'files/arquivo1.txt', dest: '/home/{{ user }}/arquivo3.ttxt', mode: 0644 }
```
