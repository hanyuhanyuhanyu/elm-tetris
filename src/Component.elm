module Component exposing (
    init,
    update,
    view
  )
import Field
import GamePad
import Html exposing (Html, div, text)


type alias Model = {
    field : Field.Field,
    gamePad : GamePad.GamePad
  }

init : Model
init = {
    field = Field.init,
    gamePad = GamePad.init
  }

update : a -> Model -> Model
update _ model = model

view : Model -> Html a
view {field, gamePad} =
  div [] [
    Field.stringify field,
    GamePad.view gamePad
  ]

