;; Problem URL: https://www.hackerrank.com/challenges/weighted-uniform-string/problem
(defun weight (char)
  (1+ (- (char-code char) (char-code #\a))))

(defun longest-substring-helper (string start elem count)
  (if (or (>= start (length string)) (char/= elem (aref string start)))
      count
      (longest-substring-helper string (1+ start) elem (1+ count))))

(defun longest-substring (string start)
  (longest-substring-helper string start (aref string start) 0))

(defun can-express (w c v)
  (and (= 0 (mod w (weight c))) (>= v (/ w (weight c)))))

(defun main ()
  (let* ((string (read-line))
	 (n (read))
	 (counts (make-hash-table :test 'equal)))
    (do ((i 0 (+ i (longest-substring string i))))
	((>= i (length string)))
      (if (or (null (gethash (aref string i) counts))
	      (< (gethash (aref string i) counts) (longest-substring string i)))
	  (setf (gethash (aref string i) counts) (longest-substring string i))))
    (loop for i from 1 to n do
	 (let ((weight (read))
	       (expressable))
	   (maphash #'(lambda (k v) (setf expressable (or expressable (can-express weight k v)))) counts)
	   (format t "~A~%" (if expressable "Yes" "No"))))))
  

(main)

    
	     
