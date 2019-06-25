## Ajustando arquivo de hosts com variáveis

Para toda máquina que desejamos rodar comandos, precisamos passar chaves privadas, mas podemos setar essas chaves diretamente no arquivo de _hosts_ como parâmetros (chave=valor).

Vamos criar um arquivo chamado `hosts-clients` com o conteúdo abaixo e logo após alterarmos nosso conteúdo no arquivo `ansible.cfg` para buscar o novo arquivo de hosts.

```shell
192.168.33.200 ansible_ssh_private_key_file=.vagrant/machines/client-1/virtualbox/private_key
192.168.33.201 ansible_ssh_private_key_file=.vagrant/machines/client-2/virtualbox/private_key
```

[Revisitando o módulo ping](ping.md)