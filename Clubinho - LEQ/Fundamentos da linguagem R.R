#Fundamentos da linguagem R#

#Tipos de objetos do R
#1. Vetores
#Em matem�tica, um vetor equivale a uma sequ�ncia de elementos que possuem mesma dire��o e sentido.
#No R, os vetores podem ser de dois tipos: num�ricos ou de palavras.

#1.1. Vetor num�rico
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
#Em matem�tica, uma matriz � uma tabela de linhas e colunas de s�mbolos sobre um conjunto.

#Criando uma matriz:
Matriz <- matrix(data=1:12, nrow=3, ncol=4)
Matriz
#Nomeando as linhas da matriz:
rownames(Matriz) <- c("Linha1", "Linha2", "Linha3")
#Nomeando as colunas da matriz:
colnames(Matriz) <- c("Coluna1", "Coluna2", "Coluna3", "Coluna4")
Matriz

#3. Data Frame
#Data Frames s�o objetos que guardam informa��es de uma planilha qualquer na mem�ria do R.
#Para compreend�-lo, vamos primeiro importar um conjunto de dados famoso:
Dados <- read.table("https://raw.githubusercontent.com/arthurfilipe/Clube-do-R/master/Clubinho%20-%20LEQ/Dados%20-%20Iris.txt", h=T)

head(Dados) #Com esta fun��o, podemos visualizar as 6 primeiras linhas do nosso data frame.
#Uma fun��o � um comando que usamos para que o R nos apresente determinado resultado; elas sempre s�o seguidas por par�nteses, dentro dos quais est�o os argumentos.
#Observa��o: uma fun��o pode estar dentro de outra fun��o, como veremos adiante.

#Coletando informa��es de uma vari�vel espec�fica da nossa planilha:
Dados$Sepal.Length

#Agora, vamos criar um histograma para esta vari�vel:
hist(Dados$Sepal.Length, ylab="Frequ�ncia", xlab="Comprimento", main=NULL, col="gray")

#Gerando um c�digo de dados com CMR (C�digo M�nimo Reproduz�vel)
Dados2 <- dput(Dados)
Dados2
Dados3 <- dput(head(Dados))
Dados3

#Extra#

#Testando rapidamente a rela��o entre o comprimento da s�pala e o comprimento da p�tala:
summary(Dados)
Resultado <- lm(Dados$Petal.Length~Dados$Sepal.Length)
summary(Resultado)
plot(Dados$Petal.Length~Dados$Sepal.Length, las=1, pch=20)
abline(Resultado, lty=2, col="red")