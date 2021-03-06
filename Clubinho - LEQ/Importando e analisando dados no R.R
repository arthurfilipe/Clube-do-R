#Importando e analisando dados no R#

getwd() #Confere qual � o diret�rio de trabalho atual.

#Existem alguns modos de importarmos um arquivo para o R.
#Modo 1: 'Arquivo' > 'Mudar dir'; o R abre uma janela para escolhermos manualmente a pasta onde nosso arquivo est� localizado.
#Modo 2: Escolhendo diretamente o arquivo dentro da pasta de trabalho:
file.choose()
#Modo 3: na linha de comando, inserimos uma fun��o para que o R abra uma janela, onde poderemos escolher o diret�rio.
setwd(choose.dir())
#Modo 4: Escrevendo manualmente o endere�o do diret�rio:
setwd("C:/Users/Arthur Filipe/Dropbox/Minicurso de R/Curso de R - LEQ")

dir() #Confere os arquivos da pasta.
list.files() #Faz o mesmo que a fun��o acima.

#Importando e lendo os dados da planilha:
Dados <- read.table("Esp�cies.txt", h=T)
head(Dados)
tail(Dados) #Apresenta as 6 �ltimas linhas da planilha.
names(Dados) #Apresenta os nomes da vari�veis da planilha.
summary(Dados) #Apresenta um resumo dos dados.
str(Dados) #Apresenta a estrutura dos nossos dados.

#Filtrando informa��es de uma determinada vari�vel:
Dados$Comprimento
attach(Dados) #Faz o R "enxergar" as colunas.

#Estrutura: 'nomedoobjeto[linha, coluna]'
Dados[3, 2]
Dados[3, ]
Dados[, 2]
Dados[3:9, 2:3]
Dados[, c(1, 4)]
Dados[c(1, 12), ]

boxplot(Comprimento)

#Calculando medidas de tend�ncia central e de dispers�o:
mean(Comprimento) #Calcula a m�dia.
median(Comprimento) #Calcula a mediana.
subset(table(Comprimento), table(Comprimento)==max(table(Comprimento)))	#Calcula a moda
var(Comprimento) #Calcula a vari�ncia.
sd(Comprimento) #Calcula o desvio padr�o.
(max(Comprimento))-(min(Comprimento)) #Calcula a amplitude
(sd(Comprimento))/(mean(Comprimento))*100 #Calcula o coeficiente de varia��o.

#Testando uma poss�vel rela��o entre o comprimento e o tipo de ambiente:
t.test(Comprimento~Ambiente)

#Criando um gr�fico simples:
library(sciplot)
lineplot.CI(Ambiente, Comprimento, type="p", xlab="Tipo de ambiente", ylab="Comprimento", las=1)