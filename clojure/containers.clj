(ns user
  (:require [clojure.string :as str]))

(defn -main
  [& args]

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; STRINGS:
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  
  (def string1 "This is my string!")
  (str/blank? string1) ;; Is string blank?
  (str/includes? string1 "my") ;; Is one string includes the other.
  (str/index-of string1 "my") ;; Index where one string occurence in other.
  (str/join " " ["The" "big" "cheese"]) ;; Joins strings and puts spaces between them.

  ;; #"..." - Regular expression string.

  (str/split string1 #" ") ;; Split a string by space.
  (str/replace "I am 42" #"42" "14") ;; Replaces 42 in a string with 14.

  (def whitespace "   Whitespace   ")
  (str/trim whitespace) ;; Remove whitespace in the beginning and the end of the string.
  (str/trimr whitespace) ;; Remove whitespace on the right.
  (str/triml whitespace) ;; Remove whitespace on the left.

  (str/upper-case string1) ;; Uppercase string.
  (str/lower-case string1) ;; Lowercase string.

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; LISTS:
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (list "Dog" 1 true 3.4) ;; Lists can contain values with different types.
  (first (list 1 2 3)) ;; First element of the list.
  (rest (list 1 2 3)) ;; Everything except first item. OUTPUT: (2 3).
  (nth (list 1 2 3) 1) ;; Return N-th element of the list. OUTPUT: 2.
  (list* 1 2 (list 3 4)) ;; Add 1 and 2 to [3 4]. OUTPUT: (1 2 3 4).
  (cons 3 (list 1 2)) ;; Add element to the beginning of the list.

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; SETS:
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (set '(1 1 2 2 3)) ;; Sets are containers with unique values. Gives: #{1 2 3}.
  (get (set '(3 2)) 2) ;; Get element with 2nd index in the set. OUTPUT: 2.
  (conj (set '(3 2)) 1) ;; Appends (to the beginning) a value to the set.
  (contains? (set '(3 2)) 2) ;; Is set contains a value.
  (disj (set '(1 2 3)) 2) ;; Removes a value from the set. OUTPUT: #{1 3}.

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; VECTORS:
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (vector 1 "Dog")
  (get (vector 1 2 3) 1) ;; Gets N-th element of the list.
  (conj (vector 1 2 3) 4) ;; Append a value (to the beginning) of the vector.
  (pop (vector 1 2 3)) ;; Removes last item of the list and. OUTPUT: [1 2].
  (subvec (vector 1 2 3 4) 1 3) ;; Substract 1 and 3 from [1 2 3 4]. OUTPUT: [2 3].

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; MAPS:
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (hash-map "Name" "John" "Age" 42) ;; Key-value pairs. OUTPUT: {"Age" 42, "Name" "John"}.
  (sorted-map 3 42 2 "One" 1 "Two") ;; Sorted based on numeric index. OUTPUT: {1 "Two", 2 "One", 3 42}.
  (get (hash-map "Name" "John" "Age" 42) "Name") ;; Get a value based on key. OUTPUT: "John".
  )
