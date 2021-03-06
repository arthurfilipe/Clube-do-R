#Explorando um pouco o uso e a interpreta��o de gr�ficos#

#Escolhendo o diret�rio de trabalho:
setwd("C:/Users/Arthur Filipe/Dropbox/Minicurso de R/Curso de R - LEQ")

#Importando os dados da planilha:
Dados <- read.table("Esp�cies.txt", h=T)
attach(Dados)

summary(Dados)
#Vamos selecionar o comprimento da esp�cie 2:
Comprimento[Esp�cie=="sp2"]

#Qual � o comprimento dos organismos com mais de uma mancha?
Comprimento[Manchas>1]

#Combinando informa��es de organismos da esp�cie 2 com mais de uma mancha:
Comprimento[Esp�cie=="sp2" & Manchas>1]

#Construindo um histograma que nos apresente os comprimentos para cada esp�cie:
hist(Comprimento[Esp�cie=="sp1"])
hist(Comprimento[Esp�cie=="sp2"])
hist(Comprimento[Esp�cie=="sp2"])

par(mfrow=c(3, 1))
#A fun��o 'par()' cria uma janela vazia para definir par�metros gr�ficos (tamanho do gr�fico, da janela, fonte, etc.).
#A fun��o 'mfrow()' cria divis�es na janela gr�fica.
#Na minha janela, eu quero 3 linhas e 1 coluna; cada linha ter� um gr�fico.

#Agora, executo os meus tr�s histogramas
hist(Comprimento[Esp�cie=="sp1"])
hist(Comprimento[Esp�cie=="sp2"])
hist(Comprimento[Esp�cie=="sp2"])
#Os gr�ficos demonstraram a varia��o de comprimento em cada esp�cie.

#As escalas diferem no eixo x de cada gr�fico; a forma da varia��o pode ser parecida, mas a amplitude � bem diferente.
#Enxergamos mais claramente essa diferen�a entre amplitudes se os gr�ficos estiverem na mesma escala.
par(mfrow=c(3, 1))
hist(Comprimento[Esp�cie=="sp1"], xlim=c(20, 90))
hist(Comprimento[Esp�cie=="sp2"], xlim=c(20, 90))
hist(Comprimento[Esp�cie=="sp2"], xlim=c(20, 90))

#Criando um boxplot para entende a influ�ncia do tipo de ambiente sobre o comprimento dos organismos:
boxplot(Comprimento~Ambiente)

#Contruindo um gr�fico com sciplot:
library(sciplot)
lineplot.CI(Ambiente, Comprimento, type="p")

#Agora, vamos fazer o mesmo procedimento, mas substituindo 'comprimento' por 'manchas'.