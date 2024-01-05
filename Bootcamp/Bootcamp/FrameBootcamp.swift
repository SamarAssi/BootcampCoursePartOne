//
//  FrameBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 07/07/2023.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.blue)
            .frame(width: 200, height: 200, alignment: .topTrailing)
            .background(Color.green)
            .frame(width: 250)
            .background(Color.red)
            .frame(height: 300)
            .background(Color.orange)
            .frame(width: 350, height: 350)
            .background(Color.purple)
            .frame(maxWidth: .infinity)
            .background(Color.yellow)
            .frame(maxHeight: .infinity, alignment: .bottom)
            .background(Color.gray)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
