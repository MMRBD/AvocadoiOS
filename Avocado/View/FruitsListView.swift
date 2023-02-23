//
//  FruitsListView.swift
//  Avocado
//
//  Created by Moklesur Rahman on 11/6/22.
//

import SwiftUI

struct FruitsListView: View {
    var body: some View {
            List {
                ForEach(recipesData) { item in
                    FruitCardView(recipe: item)
                    
                    
                }
            }
    }
}

struct FruitsListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsListView()
    }
}
