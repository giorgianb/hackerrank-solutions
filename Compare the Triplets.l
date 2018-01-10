;; Problem URL: https://www.hackerrank.com/challenges/compare-the-triplets/problem
(defun bool-to-int (b)
  (case b
    ((nil) 0)
    (otherwise 1)))
(defun main ()
  (let ((a1 (read))
	(a2 (read))
	(a3 (read))
	(b1 (read))
	(b2 (read))
	(b3 (read)))
    (let ((a (+ (bool-to-int (> a1 b1)) (bool-to-int (> a2 b2)) (bool-to-int (> a3 b3))))
	  (b (+ (bool-to-int (< a1 b1)) (bool-to-int (< a2 b2)) (bool-to-int (< a3 b3)))))
      (format t "~A ~A~%" a b))))

(main)


