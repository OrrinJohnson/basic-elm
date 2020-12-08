module Playground exposing (main)
import Html

escapeEarth myVelocity mySpeed = -- this is a function.
    if myVelocity > 11.186 then
        "Godspeed"
    else if mySpeed == 7.67 then
        "Stay in orbit"
    else
        "Come back"

computeSpeed distance time =
    distance / time

computeTime startTime endTime =
    endTime - startTime

add a b =
    a + b

multiply c d =
    c * d

divide e f =
    e / f

main = -- this is also a function. 
    divide 30 10
        |> multiply 10
        |> add 5
        |> String.fromFloat
        |> Html.text
        -- a much cleaner function chain without the parentheses.