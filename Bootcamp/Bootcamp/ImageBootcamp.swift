//
//  ImageBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 06/07/2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("sea")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 200)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
