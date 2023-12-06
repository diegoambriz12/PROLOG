#|En el volumen de un cilindro |#

(defun volumencilindro ()
  (princ "Ingrese el radio del cilindro: ")
  (setq radio (read))
  (princ "Ingrese la altura del cilindro: ")
  (setq altura (read))
  (setq resultado (* 3.1416 (* radio radio) altura))
  (write resultado)
  )

#|En el volumen de un corona circular |#
(defun volumencoronacircular ()
  (princ "Ingrese el radio exterior del cilindro: ")
  (setq radio-exterior (read))
  (princ "Ingrese el radio interior del cilindro: ")
  (setq radio-interior (read))
  (princ "Ingrese la altura del cilindro: ")
  (setq altura (read))
  (setq volumen-corona (* 3.1416 altura (- (* radio-exterior radio-exterior) (* radio-interior radio-interior))))
  (write volumen-corona))

#|En el volumen de un cubo |#

(defun volumencubo ()
  (princ "Ingrese la longitud de un lado del cubo: ")
  (setq lado (read))
  (setq resultado (* lado lado lado))
  (write resultado))

#|En el volumen de un paralelepipedo |#

(defun volumenparalelepipedo ()
  (princ "Ingrese la longitud del paralelepípedo: ")
  (setq longitud (read))
  (princ "Ingrese el ancho del paralelepípedo: ")
  (setq ancho (read))
  (princ "Ingrese la altura del paralelepípedo: ")
  (setq altura (read))
  (setq resultado (* longitud ancho altura))
  (write resultado))

#|En el volumen de un cilindro |#

(defun volumencilindro ()
  (princ "Ingrese el radio del cilindro: ")
  (setq radio (read))
  (princ "Ingrese la altura del cilindro: ")
  (setq altura (read))
  (setq resultado (* 3.1416 (* radio radio) altura))
  (write resultado))

#|En el volumen de un cono |#

(defun volumencono ()
 
  (princ "Ingrese el radio de la base del cono: ")
  (setq radio-base (read))
  (princ "Ingrese la altura del cono: ")
  (setq altura (read))
  (setq resultado (/ (* 3.1416 (* radio-base radio-base) altura) 3))
  (write resultado))

#|En el volumen de un esfera |#

(defun volumenesfera ()

  (princ "Ingrese el radio de la esfera: ")
  (setq radio-esfera (read))
  (setq resultado (/ (* 4 3.1416 (* radio-esfera radio-esfera radio-esfera)) 3))
  (write resultado))

#|En el volumen de un piramidecuadrada |#

(defun volumenpiramidecuadrada ()
  (princ "Ingrese la longitud del lado de la base de la pirámide: ")
  (setq lado-base (read))
  (princ "Ingrese la altura de la pirámide: ")
  (setq altura (read))
  (setq resultado (* (/ 1 3) (* lado-base lado-base altura)))
  (write resultado))

#|En el volumen de un cilindro hueco |#

(defun volumencilindrohueco ()
  (princ "Ingrese el radio exterior del cilindro: ")
  (setq radio-exterior (read))
  (princ "Ingrese el radio interior del cilindro: ")
  (setq radio-interior (read))
  (princ "Ingrese la altura del cilindro: ")
  (setq altura (read))
  (setq resultado (- (* 3.1416 (- (* radio-exterior radio-exterior) (* radio-interior radio-interior))) altura))
  (write resultado))

#|En el volumen de un tetraedro |#

(defun volumentetraedro ()
  (princ "Ingrese la longitud de un lado del tetraedro: ")
  (setq lado (read))
  (setq resultado (/ (* lado lado lado) (* 6 (sqrt 2))))
  (write resultado))






