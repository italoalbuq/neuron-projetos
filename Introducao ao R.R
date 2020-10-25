# INTRODUCAO AO R - Italo Giullian

# VARIAVEIS

# Uma variavel eh um nome qualquer atribuido a uma posicao 
# da memoria cujo espaco eh reservado a um determinado 
# conjunto de dados.

# Tipos de variaveis (Case sensitive)
nome = "Italo"      # character
class(nome)

valor = 3.2         # numeric
class (valor)

idade = 23L         # integer
class (idade)

ehVerdade = TRUE    # logical
class (ehVerdade)

ehFalso = F         # logical
class (ehVerdade)


# OPERADORES
# aritmeticos
x = 5
y <- 2

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

vetor = c(2, 3, 4, 'cinco')      # vetor
vetor

matriz = matrix(data=1:12, nrow=3, ncol=4)    # matriz
matriz


x = c(1, 2, 3, 'neuron')
y = c('quatro', 'cinco', 'seis', 7)
z = c(TRUE, F, FALSE, T)

lista = c(x, y, z)       # lista
lista

df = data.frame(vetor, x, y, z)      # data frame
df


ESTRUTURAS CONDICIONAIS

# Indica quais instrucoes o sistema deve processar de 
# acordo com uma expressao booleana.

# IF
x = readline('Digite um numero: ')

if(x>2){
  print('X eh maior do que dois')
}

# IF-ELSE
x = readline('Digite um numero: ')

if(x>2){
  print('X eh maior do que dois')
}else{
  print('X eh menor do que dois')
}

# IFELSE()
x = 3

ifelse(x==3, 'x eh igual a tres', 'x nao eh igual a tres')


# ESTRUTURAS DE REPETICAO

# Eh usado quando eh preciso reescrever o codigo muitas vezes.

# FOR
for (i in 1:10) {
  print(i)
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
# em um programa, alem de deixar o programa muito mais 
# organizado.

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

maior(a,b)

# Funcoes estatísticas
x = 16
y = 12.6
z = 12.3
teste = c(1,2,3,4,5,6,7,8,9,10,11,12)

sqrt(x)               # raiz quadrada
round(y)              # arredondamento
sum(x,y)              # soma
mean(teste)           # media
summary(teste)        # resumo estatistico
sd(teste)             # desvio padrao
head(iris)            # primeiras linhas do dataset
tail(iris)            # ultimas linhas do dataset
file.choose()         # abre pasta para caminho de arquivos
as()                  # conversao de tipos

as.numeric('2015')    
as.character(2015)
as.integer(TRUE)
as.logical(0)


# PACOTES

# Instalando pacotes
install.packages("tidyverse")
install.packages('ggplot2')


# Lendo pacotes
library(tidyverse)
library(ggplot2)


#Pedindo ajuda
?sqrt
help(sum)