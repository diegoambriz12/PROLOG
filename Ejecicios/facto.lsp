(princ "Dame un numero ")
(setq aux (read))
(format t "El vallor de aux es ~d ~%" aux)
(print aux)

(defun facto(x)
	(if (= x 0)
	1
	(* x (facto (- x 1)))))
