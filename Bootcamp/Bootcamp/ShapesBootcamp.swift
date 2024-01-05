//
//  ShapesBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 03/07/2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        
        //Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 50)
//            .stroke(Color.red, lineWidth: 10)
//            .stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
           .frame(width: 200, height: 100, alignment: .center)
           
//            .fill(Color.blue)
//            .foregroundColor(Color.pink)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.blue, lineWidth: 30)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.purple, lineWidth: 20)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
