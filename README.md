# WINDOWS e LINUX

# PASSO A PASSO:

# Antes de iniciar o processo certifique-se que o postgres e o pg admin estevam devidamente instalados na sua máquina(pesquisar na internet como instalar o postgres e o pgadmin para windows), e que você esteja inserido no grupo de desenvolvedores da organização SECULT CE do github.

1 - Acesse a página: https://www.docker.com/get-started

2 - Instale Docker para windows

3 -  Acesse a página: https://git-scm.com/download/win

4 - Instale GIT para windows

5 - Marque essas opções quando executar git.exe:
        5.1-  Selected Enable symbolic links
        5.2 -  Selected Checkout as-is / Commit Unix-Style line endings
6 - Crie uma pasta na sua área de trabalho com o nome “SECULT-MAPAS-DOCKER”

7 - Entre na pasta “SECULT-MAPAS-DOCKER” e clone o projeto que se encontra nesse repositório:


        git clone https://github.com/secultce/mapasculturais-docker-developer.git


8 - Entre na pasta “mapasculturais-docker-developer” e verifique se existe um diretório na raiz do projeto chamado “www”, se não existir, criar um diretório com o nome “www”.

9 - Após executar todos os passos acima, via cmd, volte para a raiz do projeto “mapasculturais-docker-developer” e execute o seguinte comando: 

	docker-compose -f docker-compose.yml up


# ATENÇÃO: O comando do item 9 só funcionará se: 

  1 - Seu docker estiver rodando na máquina.

  2 - Se caso use o visual studio code, ele precisa está com o padrão “LF” para sistemas linux(pesquisar como configurar).

  3 - O  processo de subir a aplicação via docker pode demorar dependendo da sua internet e do seu computador.   

10 - Abra o navegador em localhost:8080 e espere até a aplicação subir. 

