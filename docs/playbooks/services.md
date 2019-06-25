## Manipulando serviços

```shell
- name: start nginx
  service:
    name: nginx
    state: started
    enabled: yes
```