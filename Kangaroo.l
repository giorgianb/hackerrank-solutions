;; Problem URL: https://www.hackerrank.com/challenges/kangaroo/problem
(defun main ()
  (let ((x1 (read))
	(v1 (read))
	(x2 (read))
	(v2 (read)))
    (cond ((= x1 x2) (format t "YES"))
	  ((= v1 v2) (format t "NO"))
	  (t (let ((time (/ (- x2 x1) (- v1 v2))))
	       (if (or (minusp time) (/= (floor time) time))
		   (format t "NO")
		   (format t "YES")))))))

(main)
