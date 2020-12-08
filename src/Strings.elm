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


main =
    Html.text concatString