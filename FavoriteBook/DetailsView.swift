//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Mac on 19.01.2022.
//

import SwiftUI

struct DetailsView: View {
    var choosenFavoriteElement : FavoriteElements
    var body: some View {
        VStack{
            Image(choosenFavoriteElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(choosenFavoriteElement.name)
                .font(.largeTitle)
                .padding()
            Text(choosenFavoriteElement.description)
        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(choosenFavoriteElement: theDarkKnight)
    }
}
