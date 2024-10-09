## Calculadora Simples

Esta é uma aplicação de calculadora simples em Ruby que realiza as operações básicas de soma, subtração, multiplicação e divisão. O programa também trata o caso especial de divisão por zero e utiliza funções auxiliares para limpar a tela e controlar o tempo.
Funcionalidades

   - Somar dois números
   - Subtrair dois números
   - Multiplicar dois números
   - Dividir dois números (com tratamento para divisão por zero)
   - Limpeza de tela automática para manter a interface mais limpa durante o uso
   - Mensagens de espera utilizando uma função de pausa com precisão de décimos de segundo

### Pré-requisitos

Para rodar este programa, você precisará ter o Ruby instalado no seu sistema.

### Instalando o Ruby

Você pode instalar o Ruby utilizando os seguintes comandos, de acordo com o seu sistema operacional:

### No Ubuntu ou Debian e derivados:
```
bash

sudo apt update
sudo apt install ruby-full
```

### No macOS:
```
bash

brew install ruby
```

### No Windows:

Baixe o instalador do Ruby em rubyinstaller.org.

## Como Usar

1 - Clone este repositório para o seu ambiente local:
```
bash

git clone <link-do-repositorio>
```

2 - Navegue até o diretório do projeto:
```
bash

cd nome-do-repositorio
```

3 - Execute o script da calculadora:
```
bash

ruby nome_do_arquivo.rb
```

4 - Após executar o script, você verá um menu com as seguintes opções:
   - 1 - Somar
   - 2 - Subtrair
   - 3 - Multiplicar
   - 4 - Dividir
   - 0 - Sair

    Escolha uma das opções, insira os dois números solicitados e veja o resultado da operação.

### Exemplo de Uso
```
bash

=========menu=========
1 - Somar
2 - Subtrair
3 - Multiplicar
4 - Dividir
0 - Sair
Escolha: 1

Número 1: 5
Número 2: 3
5 + 3 = 8
```

### Estrutura do Código
**Classe Calculadora**

A classe define os métodos para realizar as quatro operações básicas (soma, subtração, multiplicação e divisão). Cada operação é definida dinamicamente com o uso de define_method.

**Função entradas**

Solicita ao usuário dois números e retorna esses valores como floats para garantir precisão nas operações matemáticas.

**Função limpar_tela**

Limpa a tela para deixar o terminal mais organizado durante a execução do programa.

**Função tempo**

Realiza uma pausa no programa, útil para esperar o usuário visualizar os resultados antes de limpar a tela.

**Função menu**

Apresenta o menu de opções e executa as operações conforme a escolha do usuário. O loop é encerrado quando o usuário escolhe a opção de sair.
## Licença

Este projeto está licenciado sob a MIT License.
