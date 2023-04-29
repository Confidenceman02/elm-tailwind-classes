module Main exposing (..)

import Browser exposing (Document)
import Html exposing (button, div, text)
import Html.Events exposing (onClick)
import TW.Background exposing (..)
import TailwindClasses as TW


type Msg
    = Decrement
    | Increment


main : Program () Int Msg
main =
    Browser.document
        { init = \_ -> ( 0, Cmd.none )
        , view = view
        , update = \_ _ -> ( 0, Cmd.none )
        , subscriptions = \_ -> Sub.none
        }


view : Int -> Document Msg
view model =
    { title = "Elm TW example"
    , body =
        [ div []
            [ button [ TW.class [ bg_red_400 ], onClick Decrement ] [ text "-" ]
            , div [] [ text (String.fromInt model) ]
            , button [ onClick Increment ] [ text "+" ]
            ]
        ]
    }
