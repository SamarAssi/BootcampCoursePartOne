//
//  ConditionalBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 09/07/2023.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Button("IS LOADING: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView {
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                }
            } else {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            Spacer()

        }
        
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
