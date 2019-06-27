## Copiando arquivos comuns

Por padrão é copiado arquivos que se encontram no diretório files do diretório corrente,

```shell
- hosts: clients
  tasks:
    - name: copiando arquivos comuns
      vars:
        user: vagrant
      copy:
        src: "{{ item.src }}"
        dest: "{{ item.dest }}"
        owner: "{{ user }}"
        group: "{{ user }}"
        mode: "{{ item.mode }}"
      with_items:
        - { src: 'files/arquivo1.txt', dest: '/home/{{ user }}/arquivo1.txt', mode: '0644' }
        - { src: 'files/arquivo2.txt', dest: '/home/{{ user }}/arquivo2.txt', mode: '0600' }
```

Agora precisamos criar os arquivos para serem utilizados de exemplo.

* Criar o diretório `files`.
* Criar os arquivo de exemplo, `arquivo1.txt` e `arquivo2.txt` com qualquer conteúdo dentro.

[Gerenciando estados de serviços](service.md)