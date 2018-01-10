;; Problem URL: https://www.hackerrank.com/challenges/simple-array-sum/problem
(defun next-int (integers start)
  (parse-integer integers :start start :junk-allowed t))

(defun next-int-index (integers start)
  (multiple-value-bind (_ i) (next-int integers start)
    (declare (ignore _))
    i))

(defun main ()
  (let ((n (next-int (read-line) 0))
	(integers (read-line)))
    (format t "~A" (do* ((i 0 (1+ i))
			 (start 0 (next-int-index integers start))
			 (cur (next-int integers start) (next-int integers start))
			 (sum cur (+ sum cur)))
			((= i (1- n)) sum)))))


(main)
