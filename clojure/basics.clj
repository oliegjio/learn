(ns user)

;; Variables are immutable.

(defn -main
  [& args]
  
  (def randomInteger 10) ;; Creates variable with integer type.
  (def randomDouble 1.123) ;; Creates variable with double type.
  
  (type false) ;; 'type' function returns the type of the variable.

  (pos? 15) ;; Is a number positive?
  (neg? 15) ;; Is a number negative?
  (even? 15) ;; Is a number even?
  (odd? 15) ;; Is a number odd?
  (number? 15) ;; Is value a number?
  (integer? 15) ;; Is value a integer?
  (float? 15) ;; Is value a float?
  (zero? 15) ;; Is value equal to zero?
  (nil? randomInteger) ;; Checks if a value is assigned.

  (def aString "This is the string!")
  (format "String output: %s" aString) ;; %s - Outputs a string.

  (def aInteger 30)
  (format "Integer output: %d" aInteger) ;; &d - Outputs an integer.

  (def aFloat 13.6345)
  (format "Float output: %f" aFloat) ;; %f - Outputs a float.
  )


