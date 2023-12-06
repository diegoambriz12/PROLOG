(defun areaCirculo()
	(princ "Dame radio: ")
	(setq num1 (read))
	(setq resultado (* 3.14 (* num1 num1)))
	(write resultado)
)

#|En el area del circulo lo que se hace pedimos el 
radio del circulo al usuario lo leemos y despues hacemos 
la operacion correspondiente en la que multiplicamos el radio 
en simismo ya que es el cuadrado del mismo numero y despues 
el resultado lo multiplicamos por PI 3.14 e imprimimos el resultado |#

(defun areaCoronacircular()
	(princ "Dame RadioAdentro: ")
	(setq num1 (read))
    (princ "Dame RadioAfuera: ")
	(setq num2 (read))
	(setq resultado (* 3.14 (- (* num2 num2) (* num1 num1))))
	(write resultado)
)

#|En el area del Coronacircular lo que pedimos son los dos radios y 
despues con esos datos ya hacemos la operacion en este caso hacemos 
es sacar el cuadrado de los dos radios el resultado lo multiplicamos 
y a ese resultado lo volvemos a multiplicar pero ahora con PI |#

(defun areaCuadrado()
	(princ "Dame perimetro: ")
	(setq num1 (read))
	(setq resultado (* num1 num1))
	(write resultado)
)

#|En la area del cuadrado lo que haces es pedir el perimetro y al leerlo 
lo que hacemos es multiplicarlo a si mismo para que nos de el resultado |#

(defun areaParalelogramo()
	(princ "Dame Base: ")
	(setq num1 (read))
    (princ "Dame Altura: ")
	(setq num2 (read))
	(setq resultado (* num1 num2))
	(write resultado)
)

#|En el area del Paralelogramo lo que pedimos es la base y la altura 
del mismo con eso hacemos la multiplicacion de la base y la altura e imprimimos |#

(defun areaPentagono()
	(princ "Dame numero de Lados: ")
	(setq num1 (read))
    (princ "Dame la a: ")
	(setq num2 (read))
	(setq resultado (/ (* num1 num2) 2 ))
	(write resultado)
)

#|En la area del pentagono pedimos el numero de lados y pedimos la a, 
con esos datos ahora hacemos la operacion del numero de lados 
multiplicando por la a y despues lo dividimos por dos e imprimimos |#

(defun areaRectangulo()
	(princ "Dame Base: ")
	(setq num1 (read))
    (princ "Dame Altura: ")
	(setq num2 (read))
	(setq resultado (* num1 num2))
	(write resultado)
)

#|En la area del rectangulo pedimos la base y la altura despues hacemos 
la operacion de base por altutra entre dos e imprimimos |#

(defun areaRombo()
	(princ "Dame D: ")
	(setq num1 (read))
    (princ "Dame d: ")
	(setq num2 (read))
	(setq resultado (/ (* num1 num2) 2 ))
	(write resultado)
)

#|En la area del rombo pedimos los datos d y D y hacemos las operaciones 
asi que multiplicamos los datos y los dividimos entre dos e imprimimos el resultado |#

(defun areaTrapecio()
	(princ "Dame Base: ")
	(setq num1 (read))
    (princ "Dame Altura: ")
	(setq num2 (read))
    (princ "Dame la contrabase: ")
    (setq num3 (read))
	(setq resultado (* (/ (+ num1 num3) 2) num2 ))
	(write resultado)
)

#|En la area del trapecio pedimos la base, altura y la contrabase al hacer la 
operacion haceos la suma de la base y la contrabase y la dividimos entre dos
el resultado lo multimplicamos por la altura e imrpimimos el resultado |#

(defun areaTriangulo()
	(princ "Dame Base: ")
	(setq num1 (read))
    (princ "Dame Altura: ")
	(setq num2 (read))
	(setq resultado (/ (* num1 num2) 2 ))
	(write resultado)
)

#|En la area del triangulo pedimos la base y la altura ahora hacemos la operacion
base por altura entre dos e imprimimos el resultado |#

(defun areaDeltoide()
	(princ "Dame D del Deltoide: ")
	(setq num1 (read))
    (princ "Dame d del Deltoide: ")
	(setq num2 (read))
	(setq resultado (/ (* num2 num1) 2 ))
	(write resultado)
)
 #| En la area del Deltoide pedimos la d y D y ahora lo que hacemos es la 
 multiplicacion entre los dos numeros y despues lo dividimos entre dos 
 e imprimimos el resultado |#