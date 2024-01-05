//
//  NavigationViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 11/07/2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                NavigationLink("hello", destination: {
                    MyOtherScreen()
                })
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                
            }
            .navigationTitle("All Inboxes")
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing:
                    NavigationLink(destination: {
                        MyOtherScreen()
                    }, label: {
                        Image(systemName: "gear")
                    })
                    .accentColor(Color.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            
            Color.green
                .navigationTitle("SECOND SCREEN")
                .ignoresSafeArea()
                //.navigationBarHidden(true)
            
            
            
            VStack {
                Button("Button back") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("click here", destination: {
                    Text("third screen")
                })
            }
            
            
            
            
        }
  
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
