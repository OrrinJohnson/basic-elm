module Strings exposing (main)

import Html


revelation =
    """
    It became very clear sitting out there today,
    that every decision I've made in my entire life
    has been wrong. My life is the complete "opposite"
    of everything I want it to be. Every instinct I have,
    in every aspect of life, be it something to wear, 
    something to eat - it's all been wrong.
    - George Costanza
    """


concatString =
    "These pretzels are " ++ "making me thirsty"



-- as you can't concatenate chars, you must first turn them into strings.


concatChars =
    String.fromChar 'O' ++ String.fromChar 'J'



-- the parentheses aren't necessary and this works without them.


dwightString =
    String.concat [ "Bears. ", "Beets. ", "Battlestar Gallactica." ]



-- this method requires the strings to be in a list and have spacing.


anotherDwightString =
    String.join " " [ "Bears.", "Beets.", "Battlestar Gallactica." ]



-- join takes two params, what are you joining with and the list.
-- for example, you could join with ',' or even ':'.
-- But what about splitting a string?


dwightSplit =
    String.split " " "Bears. Beats. Battlestar Gallactica"



-- ["Bears.", "Beats.", "Battlestar", "Gallactica"]
-- be wary of the split value, if it's an empty string, it will split
-- each character of each string.


palindrome word =
    word == String.reverse word



-- well, that's pretty easy, huh?
-- Filtering strings


isValid char =
    char /= '-'



-- String.filter isValid "222-111-5555"
--- returns "2221115555"
--formating a string...


upperCase =
    String.toUpper "I don't want to do this anymore!!!"


main =
    Html.text revelation
