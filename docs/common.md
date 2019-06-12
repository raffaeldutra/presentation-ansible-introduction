## Instalando pacotes comuns

```shell
- name: install curl package
  apt:
    name: curl
    state: present
```

```shell
- name: install git package
  apt:
    name: git
    state: present
```

## Copiando arquivos comuns

Por padrão é copiado arquivos que se encontram no diretório files do diretório corrente,

```shell
- name: copiando arquivos bash
  copy:
    src: "{{ item.src }}"
    dest: "{{ item.dest }}"
    owner: "{{ php_user }}"
    group: "{{ php_group }}"
    mode: "{{ item.mode }}"
  with_items:
    - { src: 'bash/.bashrc',       dest: '/home/{{ php_user }}/.bashrc',       mode: 0644 }
    - { src: 'bash/.bash_aliases', dest: '/home/{{ php_user }}/.bash_aliases', mode: 0644 }
    - { src: 'bash/.bashrc',       dest: '/root/.bashrc',                      mode: 0644 }
    - { src: 'bash/.bash_aliases', dest: '/root/.bash_aliases',                mode: 0644 }
```

## Usando repetições

```shell
- name: install {{ packages }} package
  apt:
    name: "{{ packages }}"
  vars:
    packages:
      - ntop
      - net-tools
    state: present
```