# Documentação
Teste realizado em cima do swagger repassado para o desafio.

### Instalando as dependências
* Ubuntu 20.04
* Ruby   2.7.2

1. Instalar o versionador de linguagens (ASDF): http://asdf-vm.com/guide/getting-started.html#_3-install-asdf

2. Instalar o plugin referente a linguagem (Ruby): https://github.com/asdf-vm/asdf-ruby

3. Seguir os seguintes passos após instalar o plugin:
* asdf list all ruby
* asdf install ruby 2.7.2
* asdf global use ruby 2.7.2
* ruby -v
* gem install bundler

4. Após a instalação do ruby e seu gerenciador de dependências, clonar o repositório e rodar o seguinte comando de dentro do diretório:
* bundle install 

### Rodando os testes
* Rodar todos os testes: cucumber
* O relatório gerado se encontra dentro da pasta data
* É possível gerar um link publico com o resutado aplicando o comando: cucumber --publish
