#Fundamentos da linguagem R#

#Tipos de objetos do R
#1. Vetores
#Em matemática, um vetor equivale a uma sequência de elementos que possuem mesma direção e sentido.
#No R, os vetores podem ser de dois tipos: numéricos ou de palavras.

#1.1. Vetor numérico
Vetor1 <- 20
Vetor1
Vetor2 <- c(1, 2, 3, 4, 5)
Vetor2

#1.2. Vetor de palavras
Vetor3 <- "Palavra"
Vetor3
Vetor4 <- c("Primeiro", "Segundo")
Vetor4

#2. Matriz
#Em matemática, uma matriz é uma tabela de linhas e colunas de símbolos sobre um conjunto.

#Criando uma matriz:
Matriz <- matrix(data=1:12, nrow=3, ncol=4)
Matriz
#Nomeando as linhas da matriz:
rownames(Matriz) <- c("Linha1", "Linha2", "Linha3")
#Nomeando as colunas da matriz:
colnames(Matriz) <- c("Coluna1", "Coluna2", "Coluna3", "Coluna4")
Matriz

#3. Data Frame
#Data Frames são objetos que guardam informações de uma planilha qualquer na memória do R.
#Para compreendê-lo, vamos primeiro importar um conjunto de dados famoso:
Dados <- read.table("https://raw.githubusercontent.com/arthurfilipe/Clube-do-R/master/Clubinho%20-%20LEQ/Dados%20-%20Iris.txt", h=T)

head(Dados) #Com esta função, podemos visualizar as 6 primeiras linhas do nosso data frame.
#Uma função é um comando que usamos para que o R nos apresente determinado resultado; elas sempre são seguidas por parênteses, dentro dos quais estão os argumentos.
#Observação: uma função pode estar dentro de outra função, como veremos adiante.

#Coletando informações de uma variável específica da nossa planilha:
Dados$Sepal.Length

#Agora, vamos criar um histograma para esta variável:
hist(Dados$Sepal.Length, ylab="Frequência", xlab="Comprimento", main=NULL, col="gray")

#Gerando um código de dados com CMR (Código Mínimo Reproduzível)
Dados2 <- dput(Dados)
Dados2
Dados3 <- dput(head(Dados))
Dados3

#Extra#

#Testando rapidamente a relação entre o comprimento da sépala e o comprimento da pétala:
summary(Dados)
Resultado <- lm(Dados$Petal.Length~Dados$Sepal.Length)
summary(Resultado)
plot(Dados$Petal.Length~Dados$Sepal.Length, las=1, pch=20)
abline(Resultado, lty=2, col="red")