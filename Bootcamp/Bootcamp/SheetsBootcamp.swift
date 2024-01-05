//
//  SheetsBootacamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 10/07/2023.
//

import SwiftUI

struct SheetsBootacamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            
            Color.green
                .ignoresSafeArea()
            
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(Color.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white.cornerRadius(10))
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })

        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            Color.red
                .ignoresSafeArea()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .padding()
            })
            
        }
        
    }
    
}

struct SheetsBootacamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootacamp()
        
        //SecondScreen()
    }
}
