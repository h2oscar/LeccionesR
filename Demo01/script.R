a
r <- 23
apply(a, 1, mean)
apply(a, 2, mean)
genero <- factor(c(rep(1, 6), rep(2, 6)), labels = c("masculino", "femenino"))
region <- factor(c(rep(1, 4), rep(2, 4), rep(3, 4)), labels = c("costa", "sierra", "oriente"))
opinion <- factor(c(rep(c(1, 2), 6)), labels = c("si", "no"))
tabla <- table(genero, region, opinion)
apply(tabla, c(1, 2), sum)
apply(tabla, c(2, 3), sum)
x<- array(1:20,dim = c(4,5))
apply(x, 2, sum)
#matrices
a<-matrix(c(1:9),ncol = 3,nrow = 3,byrow = TRUE)
v1 <- c(1, 2, 3, 4)
v2 <- c(5, 6, 7, 8)
v3 <- c(9, 10, 11, 12)
#unir por columnas
m1<-cbind(v1,v2,v3)
#unir por filas
m2 <- rbind(v1, v2, v3)
#ubicacion de un elemento
pos <- m1[, 1]
#[fila,columna]
#Extraer la diagonal principal y crear matrices diagonales
diag(m2)
diag(c(1,2,3))
