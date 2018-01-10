;; Problem URL: https://www.hackerrank.com/challenges/time-conversion/problem
(defun read-time ()
  (let* ((line (read-line))
	 (hour (parse-integer (subseq line 0 2)))
	 (minute (parse-integer (subseq line 3 5)))
	 (second (parse-integer (subseq line 6 8)))
	 (is-pm (string= (subseq line 8 10) "PM")))
    (cond ((and (= hour 12) is-pm) (values hour minute second))
	  ((and (= hour 12) (not is-pm)) (values 0 minute second))
	  (is-pm (values (+ 12 hour) minute second))
	  (t (values hour minute second)))))

(defun time-normalize (value)
  (if (< value 10)
      (format nil "0~A" value)
      (format nil "~A" value)))

    
(defun main ()
  (multiple-value-bind (hour minute second) (read-time)
    (format t "~A:~A:~A~%" (time-normalize hour) (time-normalize minute) (time-normalize second))))

(main)

    
