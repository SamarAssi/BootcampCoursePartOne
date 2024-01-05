//
//  StacksBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 07/07/2023.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        
        VStack(spacing: 50) {
            
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(Color.white)
            }
            
            Text("1")
                .foregroundColor(Color.white)
                .font(.title)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
            
            Circle()
                .frame(width: 100, height: 100)
                .overlay(
                    Text("1")
                        .foregroundColor(Color.white)
                        .font(.title)
                )
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
