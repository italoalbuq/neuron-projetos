# INTRODUCAO AO R - Italo Giullian

# VARIAVEIS - (Case sensitive)

# Uma variavel eh um nome qualquer atribuido a uma posicao 
# da memoria cujo espaco eh reservado a um determinado 
# conjunto de dados.

# Tipos de variaveis
nome = 'Italo'      # character
class(nome)

preco <- 3.25         # numeric
class (preco)

idade = 23L         # integer
class (idade)

ehVerdade = TRUE    # logical
class (ehVerdade)
ehVerdade2 = T
class (ehVerdade2)

ehFalso = FALSE         # logical
class (ehFalso)
ehFalso = F        
class (ehFalso)


# OPERADORES
# aritmeticos
x = 5
y = 2

x+y       # soma
x-y       # subtracao
x*y       # multiplicacao
x/y       # divisao
x**y      # exponenciacao
x%%y      # resto da divisao
x%/%y     # parte inteira da divisao

# comparacao
x = 5
y = 2

x<y       # menor que
x>y       # maior que
x==y      # igual
x>=y      # maior ou igual
x<=y      # menor ou igual
x!=y      # diferente de


# ESTRUTURA DE DADOS

vetor = c(2, 3, 4, 'neuron')      # vetor
vetor

matriz = matrix(data=1:12, nrow=3, ncol=4)    # matriz
matriz


nome = c('José', 'Maria', 'Pedro')
idade = c(32, 26, 9)
adulto = c(TRUE, TRUE, FALSE)
uf = c('SP', 'RJ', 'MG')


clientes = data.frame(nome, idade, adulto, uf)  # data frame
clientes

lista = list(vetor, matriz, clientes)       # lista
lista


ESTRUTURAS CONDICIONAIS

# Indica quais instrucoes o sistema deve processar de 
# acordo com uma expressao booleana.

# IF
x = readline('Digite um numero: ')

if(x>=2){
  print('X eh maior ou igual a dois')
}

# IF-ELSE
x = readline('Digite um numero: ')

if(x>=2){
  print('X eh maior ou igual a dois')
}else{
  print('X eh menor do que dois')
} 

# IFELSE()
x = 4

ifelse(x==3, 'x eh igual a tres', 'x nao eh igual a tres')


# ESTRUTURAS DE REPETICAO

# Eh usado quando eh preciso reescrever o codigo muitas vezes.

# FOR
nomes = c('Pedro', 'João', 'Leticia')

for (n in nomes) {
  print(n)
}

# WHILE
a = 1

while(a<=10){
  print(a)
  a = a + 1
}

# REPEAT
a = 1

repeat{
  print(a)
  
  a = a + 1
  
  if(a>10){
    break()
  }
}


# FUNCOES

# Blocos de comandos que podem ser usados repetidas vezes 
# em um programa.

# Criando uma funcao
maior = function(a,b){
  if (a>b){
    return(a)
  }else{
    return(b)
  }
}

a = 3
b = 1

a = 1
b = 3

maior(a,b)

# Funcoes estatísticas
x = 16
y = 12.6
z = 12.3
teste = c(1,2,3,4,5,6,7,8,9,10,11,12)

sqrt(x)               # raiz quadrada
round(z)              # arredondamento
sum(x,y)              # soma
mean(teste)           # media -> 78/12
summary(teste)        # resumo estatistico
sd(teste)             # desvio padrao
head(iris)            # primeiras linhas do dataset
tail(iris)            # ultimas linhas do dataset
file.choose()         # abre pasta para caminho de arquivos

?mean
help(sum)             # ajuda

as()                  # conversao de tipos
as.numeric('2020')    
as.character(2020)
as.integer(TRUE)
as.logical(0)


# PACOTES

# Instalando pacotes
install.packages("tidyverse")
install.packages('ggplot2')

# Lendo pacotes
library(tidyverse)
library(ggplot2)