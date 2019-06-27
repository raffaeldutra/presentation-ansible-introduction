## Manipulando serviços

Abaixo é o arquivo minimo para gerenciar um serviço com Ansible.

```shell
- name: start nginx
  service:
    name: nginx
    state: started
    enabled: yes
```