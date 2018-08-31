module Main exposing (main)

import Browser
import Html exposing (Html, h1, text)
import Html.Attributes exposing (style)



-- MODEL


type alias Model =
    {}


type alias Flags =
    {}



-- INIT


init : Flags -> ( Model, Cmd Message )
init flags =
    ( Model, Cmd.none )



-- VIEW


view : Model -> Html Message
view model =
    -- The inline style is being used for example purposes in order to keep this example simple and
    -- avoid loading additional resources. Use a proper stylesheet when building your own app.
    let
        styles =
            [ style "display" "flex"
            , style "justify-content" "center"
            ]
    in
    h1 styles [ text "Hello Elm!" ]



-- MESSAGE


type Message
    = NoOp



-- UPDATE


update : Message -> Model -> ( Model, Cmd Message )
update message model =
    ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Message
subscriptions model =
    Sub.none



-- MAIN


main : Program Flags Model Message
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
