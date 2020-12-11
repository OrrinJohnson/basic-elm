module Playground exposing (main)

import Html


escapeEarth myVelocity mySpeed fuelStatus =
    let
        escapeVelocityInKmPerSec =
            11.186

        orbitalSpeedInKmPerSec =
            7.67

        whereToLand =
            if fuelStatus == "low" then
                "Land on drone ship."

            else
                "Land on launchpad."
    in
    if myVelocity > 11.186 then
        "Godspeed"

    else if mySpeed == 7.67 then
        "Stay in orbit"

    else
        whereToLand


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


main =
    -- this is also a function.
    escapeEarth 10 6.7 "low"
        |> Html.text
