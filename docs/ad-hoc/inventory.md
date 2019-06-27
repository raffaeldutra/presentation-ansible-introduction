## Ajustando arquivo de hosts com variáveis

Para toda máquina que desejamos rodar comandos, precisamos passar chaves privadas, mas podemos setar essas chaves diretamente no arquivo de _hosts_ como parâmetros (chave=valor).

Vamos criar um arquivo chamado `hosts-clients` com o conteúdo abaixo:

Crie o arquivo em `inventory/hosts-clients`:

```shell
192.168.33.200 ansible_ssh_private_key_file=.vagrant/machines/client-1/virtualbox/private_key
192.168.33.201 ansible_ssh_private_key_file=.vagrant/machines/client-2/virtualbox/private_key
```

Agora precisamos criar o arquivo de configuração `ansible.cfg` para buscar o novo arquivo de hosts.

[Criando o arquivo de configuração ansible.cfg](ansible.cfg.md)