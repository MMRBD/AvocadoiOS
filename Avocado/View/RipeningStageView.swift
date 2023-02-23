//
//  RipeningStageView.swift
//  Avocado
//
//  Created by Moklesur Rahman on 4/4/22.
//

import SwiftUI

struct RipeningStageView: View {
    
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 35)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RipeningStageView()
            RipeningStageView()
                .preferredColorScheme(.dark)
        }
    }
}
