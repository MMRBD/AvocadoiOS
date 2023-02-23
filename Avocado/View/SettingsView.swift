//
//  SettingsView.swift
//  Avocado
//
//  Created by Moklesur Rahman on 14/1/22.
//

import SwiftUI

struct Line {
    var points = [CGPoint]()
    var color: Color = .red
    var lineWidth:Double = 1.0
}

struct SettingsView: View {
    
    @State var currentLine:Line = Line()
    @State var lines: [Line] = []
    
    var body: some View {
        VStack {
            Canvas { context, size in
                for line in lines{
                    var path = Path()
                    path.addLines(line.points)
                    context.stroke(path, with: .color(line.color), lineWidth: line.lineWidth)
                    
                }
                
            }.gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
                .onChanged({ value in
                    let newPoint = value.location
                    currentLine.points.append(newPoint)
                    self.lines.append(currentLine)
                })
                .onEnded({ value in
                    self.currentLine = Line(points: [])
                        
                })
            )
        }
        .frame(minWidth: 400, minHeight: 400)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
