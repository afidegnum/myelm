module Model exposing (init)

import Types exposing (..)


init : (Model, Cmd Msg)
init = (initialModel, Cmd.none)


initialModel : Model
initialModel = { user = NotLoggedInUser
               , loginUserName = "Some name"
               , loginPassword = "Some password"}
