module TempConverter exposing (main)

import Browser
import Html exposing (Attribute, Html, input, span, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    { input : String }


init : Model
init =
    { input = "" }



-- UPDATE


type Msg
    = Change String


update : Msg -> Model -> Model
update msg model =
    case msg of
        Change newInput ->
            { model | input = newInput }



-- VIEW


view : Model -> Html Msg
view model =
    case String.toFloat model.input of
        Just celcius ->
            viewConverter model.input "blue" (String.fromFloat (celcius * 1.8 + 32))

        Nothing ->
            viewConverter model.input "red" "?"


viewConverter : String -> String -> String -> Html Msg
viewConverter userInput color equivalentTemperature =
    span []
        [ input [ value userInput, onInput Change, style "width" "40px" ] []
        , text "°C = "
        , span [ style "color" color ] [ text equivalentTemperature ]
        , text "°F"
        ]
