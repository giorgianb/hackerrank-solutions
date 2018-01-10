;; Problem URL: https://www.hackerrank.com/challenges/mini-max-sum/problem
(defun main ()
  (let* ((numbers (sort (loop for i from 1 to 5 collect (read)) #'<))
	 (min-sum (apply #'+ (subseq numbers 0 (1- (length numbers)))))
	 (max-sum (apply #'+ (subseq numbers 1))))
    (format t "~A ~A~%" min-sum max-sum)))

(main)




    
