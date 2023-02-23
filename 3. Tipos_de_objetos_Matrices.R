# TEMA 3.-  Tipos de objetos

################################################################################
## 3)  Matrices
################################################################################

### Como crear una matriz

# Para crear matrices utilizamos la función matrix. Debemos indicar el número de filas, el número de columnas y los datos que queremos que aparezcan en su interior. En este caso, los datos se aportan en forma de vector.


mimatriz <- matrix(data=c(101:112), nrow=3, ncol=4) # crear una matriz
mimatriz


### 3.2 Acceso a los elementos de una matriz

# Para acceder a los elementos de una matriz utilizamos los [], pero indicamos en su interior la posición de la fila y la columna a la cual queremos acceder. Con la , indicamos "todo" (todas las filas o todas las columnas)

mimatriz[3,1] # muestra el dato de la tercera fila, primera columna

mimatriz[3,] # indicando solamente la fila y una coma nos muestra solo la tercera fila de la matriz

mimatriz[,4] # muestra solamente la cuarta columna

mimatriz[1:2, 1:2] # selecciona una parte de la matriz

mimatriz[1:2,] # Filas de la 1 a la 2, columnas todas

mimatriz[,3:4] # Filas todas, columnas de la 3 a la 4

mimatriz[3:4] # Nos muestra los datos en orden, como en un vector

mimatriz[6:7]

mimatriz[3]

### 3.3 Cambiar valores dentro de una matriz

# Veamos primero cómo recortar la matriz y asignarle un nombre:
  
mimatriz[,-3] # eliminar la tercera columna de una matriz
mimatriz[,-2] # eliminar solola segunda columna de una matriz
mimatriz[,-c(2:3)] # para eliminar varias columnas, las selecciono como un vector
matriz_peque <- mimatriz[,-c(2:3)] # asignar un nombre a la nueva matriz

# Para cambiar valores concretos dentro de la matriz, primero accedermos a ese elemento y le asignamos otro valor:
  
mimatriz[1] # este elemento lo queremos modificar, queremos que ahora sea un 5
mimatriz[1] <- 5 # le asignamos el nuevo valor con <-
mimatriz

mimatriz[2,3] # Podemos seleccionar un elemento por su posición en la matriz, por filas o columnas.
mimatriz[8] # o como si fuera un vector (es más complicado...)

mimatriz[2,3] <- 1000 # Podemos seleccionar un elemento por su posición en la matriz y sustituirlo.

# También podemos seleccionar una submatriz, y sustituirla por otra matriz del mismo tamaño:
  
mimatriz[1:2,1:2] ## trozo de matriz que queremos cambiar

matrix(c(1:4),nrow=2,ncol=2) ## queremos cambiarlo por esta otra matriz que creamos ahora con matrix()

mimatriz[1:2,1:2] <- matrix(c(1:4),nrow=2,ncol=2) # simplemente asignamos una cosa a la otra.

