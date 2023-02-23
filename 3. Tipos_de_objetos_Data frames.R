
## 4 Data frames (marcos de datos)

### 4.1 Como crear un data frame

# Vamos a pedir ayuda a R sobre la función `data.frame()`

?data.frame #consultamos la información de ayuda

# Podemos crear un data frame con la función `data.frame()`

# Generamos primero tres vectores, de la misma longitud. Estos van a ser las tres variables de mi tabla de datos.
especies <- c("Iris_setosa", "Iris_virginica", "Iris_versicolor") 
ID <- c(1:3)
presencia <- c(TRUE, TRUE, FALSE)

# Ahora contruimos el data frame con la funcion data.frame() y los tres vectores. Le asignamos un nombre al nuevo objeto.
midataframe <- data.frame(especies, ID, presencia)

# También se puede crear el data frame de forma directa, sin generar los vectores previamente, así:
  
data.frame(especies = c("Iris_setosa", "Iris_virginica", "Iris_versicolor"),
           ID = c(1:3), presencia = c(TRUE, TRUE, FALSE))

# Ahora vamos a consultar diferentes atributos con las funciones `class()`, `mode()`, `is.data.frame()` y `is.list()`

class(midataframe) # nos indica que tipo de objeto es
mode(midataframe) # nos indica que es una lista, porque un data frame es un tipo de lista
is.data.frame(midataframe) # para preguntar si se trata de un data frame.
is.list(midataframe) # para preguntar si se trata de una lista

# Una característica interesantes es que un data frame también es una lista. Pero cuidado, una lista no es un data.frame. Para serlo tiene que cumplir el requisito de que todos los elementos que contiene tengan la misma longitud.

# otras funciones interesantes para conocer un data frame:

nrow(midataframe) # número de filas
ncol(midataframe) # número de columnas
dim(midataframe) # número de filas y columnas

### 4.2 Acceso a los elementos de un data frame

# Para acceder a los elementos de un data frame se utilizan los `[]` y `$`, de forma similar a como hemos venido haciendo con vectores y listas. 

head(midataframe) # para explorar el data frame
midataframe[1] # puedo ir consultando cada una de las variables/columnas del data frame
midataframe[2]
midataframe[3]

# Se pueden hacer otro tipo de consultas que nos devuelven un vector.

midataframe[,1] # le estaría diciendo: muestrame todas las filas, y la primera columna
midataframe[1] # observa la diferencia
midataframe[1,] # así le estaría consultando por la primera fila y todas las columnas

# Vamos a acceder a los datos utilizando el simbolo `$`

midataframe[,1] # le estaría diciendo: muestrame todas las filas, y la primera columna
midataframe$especies # es otra forma de acceder a los datos.

# Otras consultas que puedo hacer sobre los datos del data frame es con las funciones `dimnames()`, `rownames()`, `colnames()`, `table()`, `head()` y `tail()`

dimnames(midataframe) #nombres de las filas y de las columnas
rownames(midataframe)  # nombres de las filas, que en este caso no tiene y nos da una numeracion
colnames(midataframe) # nombres de las columnas
table(midataframe$especies) # nos hace una tabla resumen de las especies, en este caso hay un individuo de cada uno en el data frame.


