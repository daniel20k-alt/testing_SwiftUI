//
//  ContentView.swift
//  testing_SwiftUI
//
//  Created by DDDD on 05/12/2020.
//




import SwiftUI

struct ContentView: View {
    
    @State private var swiftyColor: Color = .red
    @State private var swiftyOpacity: Double = 0.5
    
    var body: some View {
        VStack {
    SwiftyControls(swiftyColor: $swiftyColor, swiftyOpacity: $swiftyOpacity)
        .padding()
  
            Text("Hello, world!")
                .fontWeight(.bold)
                .kerning(4.0)
                .padding()
          
            Image(systemName:   "swift")
                .resizable()
                .padding(.all)
                .frame(width: 100.0, height: 100.0)
                .opacity(swiftyOpacity)
                .background(swiftyColor)

    
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SwiftyControls: View {
    
    @Binding var swiftyColor: Color
    @Binding var swiftyOpacity: Double
    
    var body: some View {
        VStack {
            ColorPicker("Swifty color", selection: $swiftyColor)
            Slider(value: $swiftyOpacity, in: 0...1)
                .accentColor(swiftyColor)
        }
    }
}
