module BasicForm exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    { name : String
    , password : String
    , passwordAgain : String
    }


init : Model
init =
    Model "" "" ""



-- UPDATE


type Msg
    = Name String
    | Password String
    | PasswordAgain String


update : Msg -> Model -> Model
update msg model =
    case msg of
        Name name ->
            { model | name = name }

        Password password ->
            { model | password = password }

        PasswordAgain password ->
            { model | passwordAgain = password }


viewInput : String -> String -> String -> (String -> msg) -> Html msg
viewInput t p v toMsg =
    input [ type_ t, placeholder p, value v, onInput toMsg ] []


viewValidation : Model -> Html msg
viewValidation model =
    if model.password == model.passwordAgain then
        div [ style "color" "green" ] [ text "OK" ]

    else if String.length model.password < 8 then
        div [ style "color" "yellow" ]
            [ text "Password must contain at least 8 characters!" ]

    else if model.password /= model.passwordAgain then
        div [ style "color" "red" ] [ text "Passwords do not match!" ]

    else
        div [ style "color" "orange" ] [ text "Enter your information" ]



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ div [] [ viewInput "text" "Name" model.name Name ]
        , div [] [ viewInput "password" "Password" model.password Password ]
        , div [] [ viewInput "password" "Re-enter password" model.passwordAgain PasswordAgain ]
        , div [] [ viewValidation model ]
        ]
