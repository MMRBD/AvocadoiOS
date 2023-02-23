//
//  PaintView.swift
//  Avocado
//
//  Created by Moklesur Rahman on 11/6/22.
//

import SwiftUI

struct PaintView: View {
    var body: some View {
        VStack(alignment: .center) {
            RoundedRectangle(cornerRadius: 40)
                .frame(width: 300, height: 300, alignment: .center)
            .foregroundColor(.red)
            
            HStack {
                Circle()
                    .frame(width: 400, height: 400, alignment: .center)
                .foregroundColor(.pink)
                
                Circle()
                    .frame(width: 400, height: 400, alignment: .center)
                .foregroundColor(.pink)
            }
            Circle()
                    .frame(width: 400, height: 400, alignment: .center)
            .foregroundColor(.pink)
        }
        .padding()
    }
}

struct PaintView_Previews: PreviewProvider {
    static var previews: some View {
        PaintView()
    }
}
