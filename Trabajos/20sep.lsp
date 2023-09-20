(defun tienda ()
(print "Numero de pantalones: ")
(setq x (read))

(cond
  ((< x 6) (print "No hay Descuento"))
  ((> x 11) (print "30% Descuento"))
  ((and (> x 5) (< x 12)) (print "15% Descuento"))
  (t (print "Esta es la acción predeterminada")))
)