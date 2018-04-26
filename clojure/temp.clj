(ns derek.core
  (:require [clojure.string :as str]) ;; Imports a package to working with strings.
  (:gen-class))

;; Variables are immutable.

(def randomVariable 10) ;; Creates variable of type Long.
(def randomDouble 1.223) ;; Creates variable of type Double.

(type false) ;; Returns a type of `false`.

(pos? 15) ;; Is a number positive?
(neg? 15) ;; Is a number negative?
(even? 15) ;; Is a number even?
(odd? 15) ;; Is a number odd?
(number? 15) ;; Is value a number?
(integer? 15) ;; Is value a integer?
(float? 15) ;; Is value a float?
(zero? 15) ;; Is value equal to zero?

;; Functions returns the value of the last statement.
(defn -main
  "I don't do a whole lot ... yet."
  [& args]

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; OUTPUT AND STRINGS:
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  
  (def aLong 15)
  (nil? aLong) ;; Checks if a value assigned.
  (format "Long output %d" aLong) ;; %d - Outputs an integer number.

  (def aString "Hello")
  (format "String output %s" aString) ;; %s - Outputs a string.

  (def aDouble 13.234)
  (format "Double output %f" aDouble) ;; %f - Outputs a floating point number.
  
  (def string1 "This is my string")
  (str/blank? string1) ;; Is a string blank?
  (str/includes? string1 "my") ;; Is one string includes the other?
  (str/index-of string1 "my") ;; Index where one string occurence in other.
  (str/join " " ["The" "Big" "Cheese"]) ;; Joins strings and puts spaces between them.

  ;; #"..." - Regular expression string.
  (str/split string1 #" ") ;; Split a string by spaces.
  (str/replace "I am 42" #"42" "43") ;; Replaces 42 in a string with 43.

  (def whitespace "   Whitespace   ")
  (str/trim whitespace) ;; Removes whitespace in the beginning and the end of the string.
  (str/trimr whitespace) ;; Removes whitespace on the right.
  (str/triml whitespace) ;; Removes whitespace on the left.
  
  (str/upper-case string1)
  (str/lower-case string1)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; LISTS
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (println (list "Dog" 1 true 3.4)) ;; Lists can contain values with different types.
  (println (first (list 1 2 3))) ;; First item of the list.
  (println (rest (list 1 2 3))) ;; Everything except first item.
  (println (nth (list 1 2 3) 1)) ;; Return N-th element of the list. OUTPUT: 2.
  (println (list* 1 2 [3 4])) ;; Add [3 4] to [1 2]. OUTPUT: (1 2 3 4).
  (println (cons 3 (list 1 2))) ;; Add element to the beginning.

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; SETS:
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;; Sets are containers with unique values.
  (println (set '(1 1 2 2 3))) ;; Gives: #{1 2 3}
  (println (get (set '(3 2)) 2)) ;; Get element with 2nd index. OUTPUT: 2.
  (println (conj (set '(3 2)) 1)) ;; Append value.
  (println (contains? (set '(3 2)) 2)) ;; Is contains a value.
  (println (disj (set '(1 2 3)) 2)) ;; Remove value from set. OUTPUT: #{1 3}.

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; VECTORS:
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (println (vector 1 "Dog"))
  (println (get (vector 1 2 3) 1)) ;; Get value with index. OUTPUT: 2.
  (println (conj (vector 1 2 3) 4)) ;; Append value.
  (println (pop (vector 1 2 3))) ;; Remove first item from the vector.
  (println (subvec (vector 1 2 3 4) 1 3)) ;; Substract one vector from the other. OUTPUT: [2 3].

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; MAPS:
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (println (hash-map "Name" "John" "Age" 42)) ;; Key-value pairs. OUTPUT: {AGE 42, Name John}.
  
  ;; Map sorted based on numeric index. OUPUT: {1 Pizza, 2 Banana, 3 42}.
  (println (sorted-map 3 42 2 "Banana" 1 "Pizza"))

  (println (get (hash-map "Name" "John" "Age" 42) "Name")) ;; Get a value for a key.
  )
