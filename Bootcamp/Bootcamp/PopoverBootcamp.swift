//
//  PopoverBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 11/07/2023.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Color.orange
                .ignoresSafeArea()
            
            
            VStack {
                
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                
                Spacer()
            }
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            Color.purple
                .ignoresSafeArea()
            
            
            Button(action: {
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding(20)
            })
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
    }
}
