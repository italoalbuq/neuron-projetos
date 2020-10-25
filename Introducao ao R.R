# INTRODUÇÃO AO R - Italo Giullian

# VARIÁVEIS

# Uma variável é um nome qualquer atribuído à uma posição 
# da memória cujo espaço é reservado a um determinado 
# conjunto de dados.

# Tipos de variáveis (Case sensitive)
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
# aritméticos
x = 5
y <- 2

x+y       # soma
x-y       # subtracao
x*y       # multiplicacao
x/y       # divisao
x**y      # exponenciacao
x%%y      # resto da divisao
x%/%y     # parte inteira da divisão

# comparação
x = 5
y = 2

x<y       # menor que
x>y       # maior que
x==y      # igual
x>=y      # maior ou igual
x<=y      # menor ou igual
x!=y      # diferente de


# ESTRUTURA DE DADOS

vetor = c(2, 3, 4)      # vetor
vetor

matriz = matrix(data=1:12, nrow=3, ncol=4)    # matriz
matriz

lista = c(1, 'Neuron', 2.3)       # lista
lista

df = data.frame(vetor, list)      # data frame
df


# ESTRUTURAS CONDICIONAIS

# Indica quais instruções o sistema deve processar de 
# acordo com uma expressão booleana.

# IF
x = readline('Digite um numero: ')

if(x>2){
  print('X é maior do que dois')
}

# IF-ELSE
x = readline('Digite um numero: ')

if(x>2){
  print('X é maior do que dois')
}else{
  print('X é menor do que dois')
}

# IFELSE()
x = 3

ifelse(x==3, 'x é igual a três', 'x não é igual a três')


# ESTRUTURAS DE REPETIÇÃO

# É usado quando é preciso reescrever o código muitas vezes.

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


# FUNÇÕES

# Blocos de comandos que podem ser usados repetidas vezes 
# em um programa, além de deixar o programa muito mais 
# organizado.

# Criando uma função
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

# Funções prontas
x = 16
y = 12.6
z = 12.3

sqrt(x)               # raiz quadrada
round(y)              # arredondamento
sum(x,y)              # soma
as()                  # conversão de tipos

as.numeric('2015')    
as.character(2015)
as.integer(TRUE)
as.logical(0)


#Pedindo ajuda
?sqrt
help(sum)