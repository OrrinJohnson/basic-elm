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

main = -- this is also a function. 
    computeTime 2 3
        |> computeSpeed 7.67 -- |> is a forward function application operator
        |> escapeEarth 11
        |> Html.text -- these are known as partial function applications.
        -- this is a more concise way of calling all of these functions
        -- as opposed to calling them in a chain like:
        -- Html.text (escapeEarth 11 (computeSpeed 7.67 (computeTime 2 3)))