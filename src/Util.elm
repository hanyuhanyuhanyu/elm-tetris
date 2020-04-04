module Util exposing(
    stylify
  )
import Html
import Html.Attributes exposing (style)
import Basics.Extra
           
stylify : List (String, String) -> List (Html.Attribute msg)
stylify = List.map (Basics.Extra.uncurry style)
