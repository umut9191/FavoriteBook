//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Mac on 19.01.2022.
//

import Foundation
//inside list this model can be used without identify id
struct FavoriteModel:Identifiable {
    var id = UUID()//Identifiable makes this struct obligate using id variable
    //for not givin manualy values to that id we use UUID
    var title : String
    var elements : [FavoriteElements]
}

struct FavoriteElements: Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
    
    
}
//Bands;
let metalica = FavoriteElements(name: "Metallica", imageName: "metallica", description: "No 1 Music Band")
let megadeth = FavoriteElements(name: "Megadeth", imageName: "megadeth", description: "No 2 Music Band")
let ironMaiden = FavoriteElements(name: "Iron Maiden", imageName: "ironmaiden", description: "No 3 Music Band")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metalica,megadeth,ironMaiden])

//Movies;
let pulpFiction = FavoriteElements(name: "Pulp Fiction", imageName: "pulpfiction", description: "No 1 Movie")
let theDarkKnight = FavoriteElements(name: "The Dark Knight", imageName: "thedarkknight", description: "No 2 Movie")
let kilBill = FavoriteElements(name: "Kill Bill", imageName: "killbill", description: "No 3 Movie")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [pulpFiction,theDarkKnight,kilBill])


let myFavorites = [favoriteBands,favoriteMovies]
