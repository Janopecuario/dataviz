# TEMA 3.-  Tipos de objetos

################################################################################
# 2) Listas
################################################################################

# Las listas son un tipo especial de vector que pueden contener objetos de diferentes clases. Podemos pensar en una lista como en un arbol o en un esquema, es decir como un una colección de ramas de las cuales pueden salir otras ramas. 

#Un vector sería una rama, donde todos los elementos tienen la misma clase. En una lista, podemos tener muchas ramas de diferentes clases cada una. En un vector, la longitud es el numero de elementos que contiene. En una lista, su longitud es el numero de ramas, y a su vez, cada rama tendría una longitud propia.

#Las listas se crean con la función `list()`, la cual puede tomar un número arbitrario de argumentos. Veamos:

milista <- list("Quercus","Betula","Abies","Fagus","Taxus")  # lista de 5 elementos, cada uno de ellos es una especie
milista

### Como acceder a los elementos de una lista

#Podemos acceder por la posición de cada elemento dentro de la lista utilizando los `[]`, parecido a cómo hacíamos con los vectores.

milista[1]

milista[[1]]


# Si los elementos de la lista tienen nombre, tambien puedo hacer consultas por sus nombres. Esto se hace utilizando el simbolo del `$` seguido del nombre del elemento concreto. 

# Primero vamos a asignarle nombre a cada elemento de la lista con la función `names()`

names(milista)  # comprobamos si tiene nombres
names(milista) <- c("sp1", "sp2", "sp3", "sp4", "sp5") # le asignamos nombres
names(milista)  # comprobamos si tiene nombres
milista

# Ahora consultamos el primer elemento de las dos formas que conocemos:

milista$sp1
milista[[1]]

# Comprueba ahora la diferencia entre utilizar `[]` y `[[]]`

milista[1]
