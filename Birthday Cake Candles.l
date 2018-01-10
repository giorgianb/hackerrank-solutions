;; Problem URL: https://www.hackerrank.com/challenges/birthday-cake-candles/problem
(defun main ()
  (let* ((n (read))
	 (candles (loop for i from 1 to n collect (read))))
    (format t "~A~%" (count (apply #'max candles) candles))))

(main)
