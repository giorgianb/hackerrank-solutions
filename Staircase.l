;; Problem URL: https://www.hackerrank.com/challenges/staircase/problem
(defun main ()
  (let ((n (read)))
    (loop for i from 1 to n do
	 (loop for j from 1 to (- n i) do
	      (format t "~A" " "))
	 (loop for j from 1 to i do
	      (format t "~A" "#"))
	 (format t "~%"))))


(main)
				
