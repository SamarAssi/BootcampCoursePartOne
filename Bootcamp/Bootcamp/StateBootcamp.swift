//
//  StateBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 08/07/2023.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My title"
    @State var count: Int = 0
    
    var body: some View {
        
        ZStack {
            
            backgroundColor
                .ignoresSafeArea()

            VStack(spacing: 20) {
                
                Text(myTitle)
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                
                HStack(spacing: 20) {
                    
                    Button("Button 1") {
                        backgroundColor = Color.red
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                    
                }
                
                
                
            }
            .foregroundColor(.white)
            
        }
        
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
