module Helper exposing (..)

import Html exposing (..)


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames lista =
    List.map .name lista


auxiliar : { name : String, uType : String } -> String
auxiliar lista2 =
    if lista2.uType == "Student" then
        lista2.name

    else
        ""


onlyStudents : List { name : String, uType : String } -> List String
onlyStudents lista =
    List.map auxiliar lista


type alias Videogame =
    { title : String, releaseYear : Int, available : Bool, downloads : Int, genres : List String }


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres listado =
    List.map .genres listado


type alias Computer =
    { ram : String, model : String, brand : String, screenSize : String }


myLaptop : Computer
myLaptop =
    { ram = "16GB", model = "MacBook Pro", brand = "Apple", screenSize = "13 pulgadas" }


main : Html.Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
