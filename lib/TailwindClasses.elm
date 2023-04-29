module TailwindClasses exposing (Class, ProcessorClass(..), class)

import Html exposing (Attribute)
import Html.Attributes as Attr
import List exposing (foldl)


type ProcessorClass
    = Utility String
    | Modifier (() -> String)


type alias Class =
    ProcessorClass


class : List ProcessorClass -> Attribute msg
class c =
    Attr.class (foldl (\a b -> b ++ toClass a) "" c)


toClass : ProcessorClass -> String
toClass pc =
    case pc of
        Utility c ->
            c

        Modifier lzy ->
            lzy ()
