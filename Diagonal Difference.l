;; Problem URL: https://www.hackerrank.com/challenges/diagonal-difference/problem
(defun read-square-matrix (n)
  (let ((elements (loop for i from 1 to n collect
		       (loop for i from 1 to n collect (read)))))
    (make-array (list n n) :initial-contents elements)))

(defun main ()
  (let* ((n (read))
	 (matrix (read-square-matrix n)))
    (format t "~A" (abs (loop for i from 0 to (1- n) sum (- (aref matrix i (1- (- n i))) (aref matrix i i)))))))
    
