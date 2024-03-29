//
//  SpacerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 07/07/2023.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        
        VStack {
            HStack(spacing: 0) {
                
                Image(systemName: "xmark")
                
                Spacer()
                
                Image(systemName: "gear")
                
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
            
            Rectangle()
                .frame(height: 55)
            
           
        }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
