//
//  AnimationTimingBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 10/07/2023.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimated: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimated.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(
                    .spring(
                        response: 3,
                        dampingFraction: 0.7,
                        blendDuration: 1.0
                    )
                )
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
