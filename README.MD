# Documentação
Testes automatizado com HTTParty para o desafio repassado.

## Instalando as dependências

A instalação a seguir será referente ao sistema operacional Ubuntu 20.04

1. Instalar o versionador de linguagens (ASDF): http://asdf-vm.com/guide/getting-started.html#_3-install-asdf

2. Instalar o plugin referente a linguagem (Ruby): https://github.com/asdf-vm/asdf-ruby

3. Seguir os seguintes passos após instalar o plugin:

```bash
# Verificando as versões
asdf list all ruby

# Instalando a versão específica
asdf install ruby 2.7.2

# Setando o ruby global
asdf global use ruby 2.7.2
 
# Verificando a versão e a instalação do ruby
ruby -v

# Instalando o gerenciador de bibliotecas
gem install bundler
```

4. Após a instalação do ruby e seu gerenciador de dependências, clonar o repositório e rodar o seguinte comando de dentro do diretório:
```bash
bundle install
```

## Rodando os testes

Para rodar todos os testes:

```bash
cucumber
```

O relatório gerado se encontra dentro da pasta data

É possível gerar um link publico com o resutado aplicando o comando 
```bash
cucumber --publish
```