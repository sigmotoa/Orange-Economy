x<- 2
x

Corte1<-0.3
Corte2<-0.3
Corte3<-0.4

N1<-4.0
N2<-4.6
N3<-3.0

NC1<-Corte1*N1
NC1
NC2<-Corte2*N2
NC2
NC3<-Corte3*N3
NC3
NF<-NC1+NC2+NC3
NF

str(mtcars)
class(mtcars$vs)
mtcars$vs = as.logical(mtcars$vs)
mtcars$am = as.logical(mtcars$am)
str(orangeec)

summary(orangeec)

summary(mtcars)

wt<- (mtcars$wt*1000)/2
wt

mtcars.new <- transform(mtcars,wt=wt*1000/2)
summary(mtcars.new)


tiempo_estudiar<- c (25,5,10,15,10)
tiempo_leer<- c (30,5,10,20,15)
tiempo_aprender<- tiempo_leer+tiempo_estudiar

tiempo_aprender
#matriz

mtcars[mtcars$cyl<6,]

neworangec <- subset(orangeec, Internet.penetration...population >80
                     & Education.invest...GDP >=4.5)
neworangec
neworangec <- subset(orangeec, Internet.penetration...population >80
                     & Education.invest...GDP >=4.5,
                     select = Creat.Ind...GDP)

rename(orangeec,c("Creat.Ind...GDP"="AporteEcNja"))

Nivel_Curso <- c("Basico","Intermedio","Avanzado")
Nivel_Curso

head(mtcars)
head(orangeec)
tail(mtcars)

install.packages("dplyr")
glimpse(orangeec)
myvector<- 1:8
mymtrx <- matrix(1:9,ncol=3)
mydataframe <-mtcars[1:4, ]
mydataframe
mylist <-list(myvector,mymtrx,mydataframe)
mylist
#boxplot minimo maximo 1cuartil, mediana segundo quartil, tercer cuartil

#EDA scatterplot mtcars
plot(mtcars$mpg ~ mtcars$cyl,
     xlab="Cilindros", ylab = "Millas por Galon",
     main="Relacion Cilindros y Millas")
plot(mtcars$mpg ~ mtcars$hp,
     xlab="Caballos", ylab = "Millas por Galon",
     main="Relacion Caballos y Millas")

#EDA Orange
plot(orangeec$Unemployment ~ orangeec$Education.invest...GDP,
     xlab="Inversion Educacion",
     ylab="Desempleo",
     main="Relacion inversion educacion y desempleo")
plot(orangeec$GDP.PC ~ orangeec$Creat.Ind...GDP,
     xlab="Aporte economia naranja",
     ylab="PIB",
     main="Relacion Economia naranja y PIB")
#Histograma
install.packages("qplot")
qqplot(mtcars$hp,
      geom="histogram",
      xlab="Horse",
      main="Carros segun caballos")
hist(mtcars$hp,
     xlab = "Horse",
     main = "Carros segun Caballos")

install.packages("ggplot2")

ggplot(mtcars, aes(x=hp))+
  geom_histogram(binwidth = 30)+
  labs(x="Caballos", y="Cantidad Carros", title="Caballos por cantidad")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot()+geom_histogram(data = mtcars,
                        aes(x=hp),fill="blue", color="red",
                        binwidth = 20)+
  labs(x="Caballos", y="Cantidad Carros", title="Caballos por cantidad")+
  xlim(c(80,300))+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())
  


