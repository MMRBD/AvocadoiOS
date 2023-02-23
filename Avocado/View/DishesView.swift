//
//  DishesView.swift
//  Avocado
//
//  Created by Moklesur Rahman on 25/3/22.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4){
            VStack(alignment: .leading, spacing: 4) {
                HStack{
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifire())
                    Spacer()
                    Text("Toast")
                }
                Divider()
                HStack{
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifire())
                    Spacer()
                    Text("Tacos")
                }
                
                Divider()
                HStack{
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifire())
                    Spacer()
                    Text("Salads")
                }
                
                Divider()
                HStack{
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifire())
                    Spacer()
                    Text("Spreads")
                }
            }
            
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            
            VStack(alignment: .trailing, spacing: 4) {
                HStack{
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifire())
                }
                
                Divider()
                
                HStack{
                    Text("Sandwiches")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifire())
                }
                Divider()
                HStack{
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifire())
                }
                Divider()
                HStack{
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifire())
                }
            }
            
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifire: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: 50, height: 50, alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewInterfaceOrientation(.portrait)
    }
}
