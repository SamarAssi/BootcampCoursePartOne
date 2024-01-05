//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 08/07/2023.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    @State var backgroundColor = Color.pink
    
    var body: some View {
        
        ZStack {
            
            backgroundColor
                .ignoresSafeArea()
            
            contentLayer
            
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
