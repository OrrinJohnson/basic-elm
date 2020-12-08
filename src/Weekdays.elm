module Weekdays exposing (main)
import Html

weekday correspondingNumber =
    case correspondingNumber of
        0 ->
            "Sunday"
        1 ->
            "Monday"
        2 ->
            "Tuesday"
        3 ->
            "Wednesday"
        4 ->
            "Thursday"
        5 ->
            "Friday"
        6 ->
            "Saturday"
        _ ->
            "Unknown day"

main =
    Html.text <| weekday 3