//
//  ForEachBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 07/07/2023.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["hi", "hello", "hey everyone"]
    
    var body: some View {
        
        VStack {
            
            ForEach(data.indices) { index in
                Text("\(data[index]) : \(index)")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
