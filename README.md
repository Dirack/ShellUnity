# shellUnity

> Framework de testes unitários para Shell Script

#### Instalação

* Rodar o script configure para configurar
as variáveis de ambiente passando como argumento o local onde
será instalada a biblioteca, exemplo:

```sh    
~$ ./configure $HOME
```

Para instalar a shellUnity em $HOME.

O Script configure irá gerar um 'Makefile' de instalação tomando o arquivo 'Makefile.in' como
template. As variáveis de ambiente serão escritas em 'env.sh'. Uma linha será adicionada ao
arquivo $HOME/.bashrc para carregar as variáveis definidas em 'env.sh'.

* Para concluir a instalação em $HOME, basta rodar o comando:

```sh
~$ make install
```
