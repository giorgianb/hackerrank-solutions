;; Problem URL: https://www.hackerrank.com/challenges/between-two-sets/problem
(defun main ()
  (let* ((n (read))
	 (m (read))
	 (a (loop for i from 1 to n collect (read)))
	 (b (loop for i from 1 to m collect (read)))
	 (count 0))
    (loop for i from (apply #'max a) to (apply #'max b) do
	 (when (and (every #'(lambda (a) (zerop (mod i a))) a)
		    (every #'(lambda (b) (zerop (mod b i))) b))
	   (incf count)))
    (format t "~A~%" count)))

(main)

