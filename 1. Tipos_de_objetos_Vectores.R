# TEMA 3.-  Tipos de objetos

################################################################################
# 1) Vectores y operaciones con vectores
################################################################################

# Para definir un vector utilizamos la función `c()`. Dentro de los parentesis indicamos los valores que queremos concatenar. Algunos ejemplos son:

mivector <- c("julia","ruben","alejandro")
mivector

mivector2 <- c(2,4,6,8,10,12,14,16)
mivector2

# También podemos utilizar la función `seq()` para generar secuencias de números en un rango determinado

seq(from = 5, to = 25, by = 5)

seq(from = 2, to = 20, by = 2)

seq(from=2, to=10, by=2)

# Acordaros que podemos generar un vector de datos numericos de esta manera, pero si queremos guardarlo como un objeto debemos asignarle un nombre utilizando este simbolo `<-`

misecuencia <- seq(from=2, to=10, by=2)

# También podemos utilizar el símbolo : para hacer secuencias de números, o de números y texto. Podemos utilizar la función `class()` para preguntar de qué clase son los elementos que contiene un vector. La única regla para un vector es que solo puede contener elementos de una misma clase.

1:10  # valores numericos
c(1,7:9)
class(c(1,7:9)) # preguntamos que clase de objeto se trata. Es un objeto numerico.
c(1:5, 10.5, "next") # todos los elementos dentro de un vector deben ser de la misma categoria
class(c(1:5, 10.5, "next"))

# Otra función interesante es la función length(). Sirve para conocer la longitud de un vector.

v <- 1:10
v
length(v)

# Podemos jugar con este vector para qué veáis que ocurre
length(v) <- 10
v

# Otras operaciones con vectores. Podemos utilizar los [] para preguntarle a un vector por valores en posiciones concretas# Por ejemplo en el vector v, consulto el valor del elemento en la posición 3.

v <- 1:12 # genero el vector v
v
length(v) # pregunto por su longitud
v[3] # consulto el valor del elemento en la posición 3

v[15] # puedo preguntar por un elemento que no existe. Veréis qué ocurre.
v[15] <- 30 # incluso asignarle un valor
v[14]<-"julia" 
v
rm(v) # finalmente podemos eliminar v





