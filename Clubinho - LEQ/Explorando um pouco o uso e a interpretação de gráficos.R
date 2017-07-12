#Explorando um pouco o uso e a interpretação de gráficos#

#Escolhendo o diretório de trabalho:
setwd("C:/Users/Arthur Filipe/Dropbox/Minicurso de R/Curso de R - LEQ")

#Importando os dados da planilha:
Dados <- read.table("Espécies.txt", h=T)
attach(Dados)

summary(Dados)
#Vamos selecionar o comprimento da espécie 2:
Comprimento[Espécie=="sp2"]

#Qual é o comprimento dos organismos com mais de uma mancha?
Comprimento[Manchas>1]

#Combinando informações de organismos da espécie 2 com mais de uma mancha:
Comprimento[Espécie=="sp2" & Manchas>1]

#Construindo um histograma que nos apresente os comprimentos para cada espécie:
hist(Comprimento[Espécie=="sp1"])
hist(Comprimento[Espécie=="sp2"])
hist(Comprimento[Espécie=="sp2"])

par(mfrow=c(3, 1))
#A função 'par()' cria uma janela vazia para definir parâmetros gráficos (tamanho do gráfico, da janela, fonte, etc.).
#A função 'mfrow()' cria divisões na janela gráfica.
#Na minha janela, eu quero 3 linhas e 1 coluna; cada linha terá um gráfico.

#Agora, executo os meus três histogramas
hist(Comprimento[Espécie=="sp1"])
hist(Comprimento[Espécie=="sp2"])
hist(Comprimento[Espécie=="sp2"])
#Os gráficos demonstraram a variação de comprimento em cada espécie.

#As escalas diferem no eixo x de cada gráfico; a forma da variação pode ser parecida, mas a amplitude é bem diferente.
#Enxergamos mais claramente essa diferença entre amplitudes se os gráficos estiverem na mesma escala.
par(mfrow=c(3, 1))
hist(Comprimento[Espécie=="sp1"], xlim=c(20, 90))
hist(Comprimento[Espécie=="sp2"], xlim=c(20, 90))
hist(Comprimento[Espécie=="sp2"], xlim=c(20, 90))

#Criando um boxplot para entende a influência do tipo de ambiente sobre o comprimento dos organismos:
boxplot(Comprimento~Ambiente)

#Contruindo um gráfico com sciplot:
library(sciplot)
lineplot.CI(Ambiente, Comprimento, type="p")

#Agora, vamos fazer o mesmo procedimento, mas substituindo 'comprimento' por 'manchas'.