//
//  FruitCardView.swift
//  Avocado
//
//  Created by Moklesur Rahman on 11/6/22.
//

import SwiftUI

struct FruitCardView: View {
    
    
    var recipe: Recipe
    
    var body: some View {
        HStack {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .frame(width: 120, alignment: .leading)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(recipe.title)
                Text(recipe.headline)
            }
            .padding()
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .topLeading
            )
//        .background(Color("ColorApperanceAdaptive"))
//        .shadow(color: Color("ColorBlackTransparentLight"), radius: 12, x: 0, y: 0)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(recipe: recipesData[8])
    }
}
