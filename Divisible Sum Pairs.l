;; Problem URL: https://www.hackerrank.com/challenges/divisible-sum-pairs/problem
(defun main ()
  (let* ((n (read))
	 (k (read))
	 (a (loop for i from 1 to n collect (read))))
    (format t "~A~%" (count-if #'(lambda (a) (= (mod a k) 0))
			       (loop for i from 0 to (- n 2) append
				    (mapcar #'(lambda (k) (+ k (nth i a))) (subseq a (1+ i))))))))

(main)
