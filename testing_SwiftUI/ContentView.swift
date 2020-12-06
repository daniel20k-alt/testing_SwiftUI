//
//  ContentView.swift
//  testing_SwiftUI
//
//  Created by DDDD on 05/12/2020.
//




import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .fontWeight(.bold)
                .kerning(4.0)
                .padding()
          
            Image(systemName:   "swift")
                .resizable()
                .padding(.all)
                .frame(width: 100.0, height: 100.0)
                .background(Color.blue)

    
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
