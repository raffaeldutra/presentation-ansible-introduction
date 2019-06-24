# Infraestrutura

Infraestrutura criada utilizando Ansible [https://www.ansible.com/](https://www.ansible.com/).

## Exemplo de projeto em PHP e MySQL

* Aplicação em `PHP`.
* Banco de dados em `MySQL`.
* Versão do Ansible aplicado no projeto: `2.8`.
* Utilizado Ansible Vault para criptografar senha do usuário `root` e `app1` 

Locais e configurações criados no servidor para deploy:

* Grupo criado: `apps`.
* Usuário PHP criado: `app1`.
* Diretório do deploy: `/opt/app1`.
* Nome da aplicação: `app1`.


### Passos para criar infraestrutura

1. Rodando `requirements.yml` para baixar dependencias dos módulos utilizados pela aplicação:

```
ansible-galaxy install -r requirements.yml 
```

2. Rodando playbook com vault

```
ansible-playbook site.yml -i inventory/hosts  --ask-vault-pass
```

[Comandos Ad-Hoc](ad-hoc/_overview.md)