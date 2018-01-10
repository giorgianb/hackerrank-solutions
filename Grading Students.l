;; Problem URL: https://www.hackerrank.com/challenges/grading/problem
(defun round-grade (grade)
  (if (< grade 38)
      grade
      (if (>= 2 (- 5 (mod grade 5)))
	  (+ grade (- 5 (mod grade 5)))
	  grade)))

(defun main ()
  (let* ((n (read))
	 (grades (loop for i from 1 to n collect (round-grade (read)))))
    (mapcan #'(lambda (grade) (format t "~A~%" grade)) grades)))

(main)


