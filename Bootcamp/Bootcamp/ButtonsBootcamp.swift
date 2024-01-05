//
//  ButtonsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 08/07/2023.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title: String = ""
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(title)
            
            Button("press me") {
                self.title = "BUTTON WAS PRESSED"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button #2 was pressed"
            }, label: {
                Text("Button".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
                    .foregroundColor(Color.white)
            })
            
            Button(action: {
                self.title = ""
            }, label: {
                Text("Clear")
            })
            
            Button(action: {
                self.title = "Button #3"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color("DarkRed"))
                    )
            })
            
            
            Button(action: {
                self.title = "Button #4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .bold()
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                    )
            })
            
        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
