;; Problem URL: https://www.hackerrank.com/challenges/the-birthday-bar/problem
(defun main ()
  (let* ((n (read))
	 (s (loop for i from 1 to n collect (read)))
	 (d (read))
	 (m (read)))
    (format t "~A~%" (count-if #'(lambda (ss) (= (apply #'+ ss) d))
			       (loop for i from 0 to (- n m) collect (subseq s i (+ i m)))))))

(main)
    
  
