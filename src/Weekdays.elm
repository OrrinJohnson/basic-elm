module Weekdays exposing (main)
import Html

weekday dayInNumber =
    if dayInNumber == 0 then
        "Sunday"
    else if dayInNumber == 1 then
        "Monday"
    else if dayInNumber == 2 then
        "Tuesday"
    else if dayInNumber == 3 then
        "Wednesday"
    else if dayInNumber == 4 then
        "Thursday"
    else if dayInNumber == 5 then
        "Friday"
    else if dayInNumber == 6 then
        "Saturday"
    else
        "Unknown day"

main =
    Html.text <| weekday 5