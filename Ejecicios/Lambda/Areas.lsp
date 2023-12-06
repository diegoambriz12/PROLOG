
#|En el area del cuadrado con lambda |#

(defvar *areacuadrado* (lambda (num1 num2) (* num1 num2)))

(defun dameDatos()
    (princ "Dame un dato:")
    (setq num1 (read))
    (princ "Dame otro dato:")
    (setq num2 (read))
    (format t "El resutado es ~A" (funcall *areacuadrado* num1 num2))
)

#|En el area del circulo con lambda |#

(defvar *areacirculo* (lambda (* 3.14 (* num1 num1))))

(defun areaCirculo()
  
    (princ "Dame radio: ")
    (setq num1 (read))
    (format t "El resutado es ~A" (funcall *areacirculo* num1 )))

#|En el area del coronacircular con lambda |#

(defvar *areaCoronacircular* (lambda (* 3.14 (- (* num2 num2) (* num1 num1)))))

(defun areaCoronacircular()
  
    (princ "Dame RadioAdentro: ")
	(setq num1 (read))
    (princ "Dame RadioAfuera: ")
	(setq num2 (read))
    (format t "El resutado es ~A" (funcall *areaCoronacircular* num1 num2 )))

#|En el area del paralelogramo con lambda |#

(defvar *areaParalelogramo* (lambda (/ (* num1 num2) 2 )))

(defun areaParalelogramo()
    (princ "Dame Base: ")
	(setq num1 (read))
    (princ "Dame Altura: ")
	(setq num2 (read))
    (format t "El resutado es ~A" (funcall *areaParalelogramo* num1 num2 )))

#|En el area del rectangulo con lambda |#

(defvar *areaRectangulo* (lambda (* num1 num2)))

(defun areaRectangulo()
    (princ "Dame Base: ")
	(setq num1 (read))
    (princ "Dame Altura: ")
	(setq num2 (read))
    (format t "El resutado es ~A" (funcall *areaRectangulo* num1 num2 )))

#|En el area del rombo con lambda |#

(defvar *areaRombo* (lambda (/ (* num1 num2) 2 )))

(defun areaRombo()
    (princ "Dame D: ")
	(setq num1 (read))
    (princ "Dame d: ")
	(setq num2 (read))
    (format t "El resutado es ~A" (funcall *areaRombo* num1 num2 )))

#|En el area del trapecio con lambda |#

(defvar *areaTrapecio* (lambda (* (/ (+ num1 num3) 2) num2 )))

(defun areaTrapecio()
    (princ "Dame Base: ")
	(setq num1 (read))
    (princ "Dame Altura: ")
	(setq num2 (read))
    (princ "Dame la contrabase: ")
    (setq num3 (read))
    (format t "El resutado es ~A" (funcall *areaTrapecio* num1 num2 num3 )))

#|En el area del triangulo con lambda |#

(defvar *areaTriangulo* (lambda (/ (* num1 num2) 2 )))

(defun areaTriangulo()
    (princ "Dame Base: ")
	(setq num1 (read))
    (princ "Dame Altura: ")
	(setq num2 (read))
    (format t "El resutado es ~A" (funcall *areaTriangulo* num1 num2 )))

#|En el area del deltoide con lambda |#

(defvar *areaDeltoide* (lambda (/ (* num2 num1) 2 )))

(defun areaDeltoide()
    (princ "Dame D del Deltoide: ")
	(setq num1 (read))
    (princ "Dame d del Deltoide: ")
	(setq num2 (read))
    (format t "El resutado es ~A" (funcall *areaDeltoide* num1 num2 )))