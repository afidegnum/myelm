module View exposing (view, loggedInComponent)

import Html exposing (Html, button, div, text, input)
import Html.Events exposing (onClick, onInput)
import Html.Attributes exposing (class, placeholder)

import Types exposing (..)


view : Model -> Html Msg
view model = div []
    [ statusBar model
    , pageContent model
    , footer model
    ]


-- User Bar
-- Later break out into separate component
statusBar : Model -> Html Msg
statusBar model =
    let contents = case model.user of NotLoggedInUser -> loginComponent model
                                      LoggedInUser user -> loggedInComponent user
    in div [class "statusBar"] [contents]                       


loggedInComponent : { a | userName : String } -> Html Msg
loggedInComponent user = text ("Logged in: " ++ user.userName)


loginComponent : Model -> Html Msg
loginComponent model = div [] [ input [ placeholder "Username", onInput Username] [ text model.loginUserName ]
                              , input [ placeholder "Password", onInput Password] [ text model.loginPassword ]
                              , button [ onClick Login ] [ text "Login" ]
                              ]
-- END User Bar


pageContent : Model -> Html Msg
pageContent model = let content = case model.user of NotLoggedInUser -> ""
                                                     _ -> "Some page content"
                    in div [class "pageContent"] [text content]


footer : Model -> Html Msg
footer model = div [class "footer"] [text "Copyright Foobar"]
