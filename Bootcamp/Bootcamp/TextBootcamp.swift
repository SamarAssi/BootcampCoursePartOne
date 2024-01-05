//
//  TextBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 03/07/2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello world!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .foregroundColor(.blue)
//            .italic()
//            .strikethrough()
        
          //  .font(.system(size: 24, weight: .semibold, design: .monospaced))
            .multilineTextAlignment(.leading)
            //.baselineOffset(-100)
            .kerning(1.0)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
