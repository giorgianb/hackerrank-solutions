;(defparameter *months* '(31 28 31 30 31 30 31 31 30 31 30 31))
;(defparameter *counts* (reverse (maplist #'(lambda (l) (apply #'+ l)) (reverse *months*))))

(defun is-leap? (y)
  (zerop (mod y 4)))

(defun extra-days (y)
  ((- y 2000) / 400)

(defun main ()
  (let* ((year (read))
	 (day (if (is-leap? year) 12 13)))
    (when (= year 1918)
      (setf day (+ day 14)))

	(format t "12.09.~A" year)
	(format t "13.09.~A" year))))

