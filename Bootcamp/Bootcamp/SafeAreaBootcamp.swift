//
//  SafeAreaBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 08/07/2023.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        
        ScrollView {
            Text("Title goes here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
                    
            }
        }
        .background(
            Color.red
                .ignoresSafeArea()
        )
        
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
