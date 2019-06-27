# Infraestrutura com Ansible

Infraestrutura criada utilizando Ansible [https://www.ansible.com/](https://www.ansible.com/).

Para este tutorial usaremos a seguinte abordagem:

* Criaremos 3 (três) diretórios:
  * Código.
  * Ad-hoc.
  * Playbooks.

Utilize o seguinte comando:

```shell
mkdir -p ansible-introducao/{ad-hoc/inventory,playbooks/inventory}
```

Copiaremos o arquivo `Vagrantfile` com o comando (para quem usa Linux ou Mac):

```shell
curl https://raw.githubusercontent.com/raffaeldutra/presentation-ansible-introduction/master/Vagrantfile --output ansible-introducao/Vagrantfile
```

Levante os servidores com o comando:

```shell
cd ansible-introducao && vagrant up
```

Instale Ansible em sua máquina:

```shell
curl -fsSL https://raw.githubusercontent.com/raffaeldutra/presentation-ansible-introduction/master/installation.sh | sh;
```

Entre no diretório `ad-hoc`:

```shell
cd ansible-introducao/ad-hoc
```

* [Comandos Ad-Hoc](docs/ad-hoc/_overview.md)
* [Playbooks](docs/playbooks/_overview.md)