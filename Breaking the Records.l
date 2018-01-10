;; Problem URL: https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
(defun main ()
  (let* ((n (read))
	 (min (read))
	 (max min)
	 (min-break 0)
	 (max-break 0))
    (loop for i from 1 to (1- n) do
	 (let ((s (read)))
	   (cond ((> s max) (setf max s) (incf min-break))
		 ((< s min) (setf min s) (incf max-break)))))
    (format t "~A ~A~%" min-break max-break)))

(main)


