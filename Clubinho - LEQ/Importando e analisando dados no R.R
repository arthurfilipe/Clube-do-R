#Importando e analisando dados no R#

getwd() #Confere qual é o diretório de trabalho atual.

#Existem alguns modos de importarmos um arquivo para o R.
#Modo 1: 'Arquivo' > 'Mudar dir'; o R abre uma janela para escolhermos manualmente a pasta onde nosso arquivo está localizado.
#Modo 2: Escolhendo diretamente o arquivo dentro da pasta de trabalho:
file.choose()
#Modo 3: na linha de comando, inserimos uma função para que o R abra uma janela, onde poderemos escolher o diretório.
setwd(choose.dir())
#Modo 4: Escrevendo manualmente o endereço do diretório:
setwd("C:/Users/Arthur Filipe/Dropbox/Minicurso de R/Curso de R - LEQ")

dir() #Confere os arquivos da pasta.
list.files() #Faz o mesmo que a função acima.

#Importando e lendo os dados da planilha:
Dados <- read.table("Espécies.txt", h=T)
head(Dados)
tail(Dados) #Apresenta as 6 últimas linhas da planilha.
names(Dados) #Apresenta os nomes da variáveis da planilha.
summary(Dados) #Apresenta um resumo dos dados.
str(Dados) #Apresenta a estrutura dos nossos dados.

#Filtrando informações de uma determinada variável:
Dados$Comprimento
attach(Dados) #Faz o R "enxergar" as colunas.

boxplot(Comprimento)

#Calculando medidas de tendência central e de dispersão:
mean(Comprimento) #Calcula a média.
median(Comprimento) #Calcula a mediana.
subset(table(Comprimento), table(Comprimento)==max(table(Comprimento)))	#Calcula a moda
var(Comprimento) #Calcula a variância.
sd(Comprimento) #Calcula o desvio padrão.
(max(Comprimento))-(min(Comprimento)) #Calcula a amplitude
(sd(Comprimento))/(mean(Comprimento))*100 #Calcula o coeficiente de variação.

#Testando uma possível relação entre o comprimento e o tipo de ambiente:
t.test(Comprimento~Ambiente)

#Criando um gráfico simples:
library(sciplot)
lineplot.CI(Ambiente, Comprimento, type="p", xlab="Tipo de ambiente", ylab="Comprimento", las=1)