;функция, которая принимает целое число и возвращает первое
;четное число, не меньшее аргумента
(defun first_even (number) (if (evenp number) number (+ number 1)))
(print (first_even 4))

;функция, которая принимает число и возвращает число того же
;знака, но с модулем на 1 больше модуля аргумента

(defun abs_more (number)
        (cond ((>= number 0) (+ number 1))
               (T (- (+ (abs number) 1)))))
(print (abs_more 0))

;функция, которая принимает два числа и возвращает список
;из этих чисел, расположенный по возрастанию
(defun inc_list (number_1 number_2) 
    (if (<= number_1 number_2) (list number_1 number_2) (list number_2 number_1)))
(print (inc_list 2 4))

;функция, которая принимает три числа и возвращает T только
;тогда, когда первое число расположено между вторым и третьим
(defun is_middle_cond (number_1 number_2 number_3)
    (cond ((and (> number_1 number_2) (< number_1 number_3)) T) (T Nil)))

(defun is_middle_if (number_1 number_2 number_3)
    (if (and (> number_1 number_2) (< number_1 number_3)) T nil))

(defun is_middle_andor (number_1 number_2 number_3)
    (and (> number_1 number_2) (< number_1 number_3)))
(print (is_middle_cond 4 2 5))
(print (is_middle_if 4 2 5))
(print (is_middle_andor 2 4 5))

;предикат, который принимает два числа-аргумента и возвращает T,
;если первое число не меньше второго.
(defun is_bigger (number_1 number_2)
    (if (>= number_1 number_2) T nil))
(print (is_bigger -1 -5))

(defun pred1 (x) (and (numberp x) (plusp x)))
(print (pred1 "abc"))