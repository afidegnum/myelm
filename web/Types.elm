module Types exposing (..)

import Http


type User = NotLoggedInUser | LoggedInUser { userName : String }


type alias Model = { user : User 
                   , loginUserName : String
                   , loginPassword : String
                   }

--type alias LoginForm = { username : String
                       --, password : String}                   


type Msg = Login
         | LoginResult (Result Http.Error String)
         | Logout
         | Username String
         | Password String




--data Achievement = Achievement { achievementName : String
--                            , achievementUser : UserId  — newtype for integer
--                            , achievementScore : Int
--                            , achievementDescription : String
--                            , achievementImageName : String
--                            }

--data Player = Player { playerName : String }

--data PlayerAchievement = PlayerAchievement { player : Player
--                                      , achievement : Achievement
--                                      }

