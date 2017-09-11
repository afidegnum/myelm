module Main exposing (..)

import Html exposing (program)

import Types exposing (..)
import Model
import Update
import View
import Subscriptions


main : Program Never Model Msg
main = program { init = Model.init
               , view = View.view
               , update = Update.update
               , subscriptions = Subscriptions.subscriptions
               }
