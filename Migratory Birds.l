;; Problem URL: https://www.hackerrank.com/challenges/migratory-birds/problem
(defun main ()
  (let* ((count (make-array 5))
	 (n (read)))
    (loop for i from 1 to n do
	 (let ((bird (read)))
	   (incf (aref count (1- bird)))))
    (let* ((max (apply #'max (map 'list #'identity count)))
	   (bird (1+ (position max count))))
      (format t "~A~%" bird))))

(main)


