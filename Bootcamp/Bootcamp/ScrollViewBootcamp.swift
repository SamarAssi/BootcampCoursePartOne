//
//  ScrollViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 08/07/2023.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        ScrollView {
            LazyVStack {
                
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        
                        LazyHStack {
                            
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .padding()
                                    .shadow(radius: 10)
                            }
                        
                        }
                    })
                }
            }
        }
        
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
