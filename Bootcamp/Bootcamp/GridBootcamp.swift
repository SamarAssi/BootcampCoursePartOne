//
//  GridBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 08/07/2023.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        
                ScrollView {
        
                    Rectangle()
                        .fill(Color.orange)
                        .frame(height: 400)
        
                    LazyVGrid(
                        columns: columns,
                        alignment: .center,
                        spacing: 6,
                        pinnedViews: [.sectionHeaders],
                        content: {
        
                            Section(
                                header:
                                    Text("Section 1")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(Color.blue)
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .padding()
                            ) {
        
                                ForEach(0..<20) { index in
                                    Rectangle()
                                        .frame(height: 150)
        
                                }
        
                            }
        
                            Section(
                                header:
                                    Text("Section 2")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(Color.red)
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .padding()
                            ) {
        
                                ForEach(0..<20) { index in
                                    Rectangle()
                                        .fill(Color.green)
                                        .frame(height: 150)
        
                                }
        
                            }
        
                        })
        
                }
        

            
        }
    }
    
    struct GridBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            GridBootcamp()
        }
    }

