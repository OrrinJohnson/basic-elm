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

hashtag correspondingNumber =
    case weekday correspondingNumber of
        "Sunday" ->
            "#SinDay"
        "Monday" ->
            "#MondayBlues"
        "Tuesday" ->
            "#TakeMeBackTuesday"
        "Wednesday" ->
            "#HumpDay"
        "Thursday" ->
            "#ThrowbackThursday"
        "Friday" ->
            "#FlashbackFriday"
        "Saturday" ->
            "#Caturday"
        _ ->
            "Whatever"

main =
    Html.text <| hashtag 5