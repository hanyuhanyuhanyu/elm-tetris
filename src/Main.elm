import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Component

main =
  Browser.sandbox { init = Component.init, update = Component.update, view = Component.view }

