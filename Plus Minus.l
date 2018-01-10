;; Problem URL: https://www.hackerrank.com/challenges/plus-minus/problem
(defun bool-to-int (b)
  (case b
    ((nil) 0)
    (otherwise 1)))

(defun main ()
  (let ((len (read)))
    (do* ((i 0 (1+ i))
	  (cur (read) (read))
	  (p  (bool-to-int (> cur 0)) (+ p (bool-to-int (> cur 0))))
	  (n  (bool-to-int (< cur 0)) (+ n (bool-to-int (< cur 0))))
	  (z  (bool-to-int (= cur 0)) (+ z (bool-to-int (= cur 0)))))
	 ((= i (1- len)) (format t "~A~%~A~%~A~%" (float (/ p len)) (float (/ n len)) (float (/ z len)))))))

(main)

