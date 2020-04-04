module Field exposing(
    Field,
    stringify,
    init
  )
import Html exposing (Html, div, text)

type Block = 
  TBlock |
  OBlock |
  IBlock |
  LBlock |
  JBlock |
  SBlock |
  ZBlock
type Box =
  Filled Block |
  Mask Block |
  Hidden Block |
  Empty |
  Wall
type alias Line = List Box
type alias Field = List Line

initLine : Line
initLine = List.concat [
    List.singleton Wall,
    List.repeat 10 Empty,
    List.singleton Wall
  ]
init : Field
init = List.concat[
    List.repeat 10 initLine,
    [List.repeat 12 Wall]
  ]
wall = "＃"
filled = "＠"
toText : Box -> String
toText box = 
  case box of
    Filled _ -> filled
    Mask _ -> wall
    Hidden _ -> wall
    Empty -> "　"
    Wall -> wall
toDiv : Line -> Html a
toDiv line =
  div [] [ text (String.concat (List.map toText line)) ]
stringify : Field -> Html a
stringify f =
  div [] (List.map toDiv f)

