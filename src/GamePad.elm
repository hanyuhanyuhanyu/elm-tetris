module GamePad exposing (
    GamePad,
    init,
    view
  )
import Html exposing (Html, div, text)
import Html.Attributes exposing (style)
import Util

type alias GamePad = Int
init = 1

view _ = div defaultStyle [ text "hoge" ]

defaultStyle = Util.stylify [
    ("display", "flex"),
    ("display", "flex"),
    ("align-items", "center"),
    ("justify-content", "center")
 ]
