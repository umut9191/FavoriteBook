//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Mac on 19.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        List{
            ForEach(myFavorites){ favorite in
                Section(header: Text(favorite.title)) {
                    ForEach(favorite.elements){ element in
                        NavigationLink(
                            destination: DetailsView(choosenFavoriteElement: element),
                            label: {
                                Text(element.name)
                            })
                        
                    }
                }
            }
        }
        .navigationBarTitle(Text("Favorite Book").foregroundColor(.black))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
