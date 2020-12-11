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
            VStack {
                Thumbnail()
                VStack {
                    SwiftyControls(swiftyColor: $swiftyColor, swiftyOpacity: $swiftyOpacity)
                    .padding()
                    
                    Text("Hello, world!")
                        .fontWeight(.bold)
                        .kerning(4.0)
                        .padding()
                    
                    Text("This is an image, of course")
                        .fontWeight(.bold)
                        .kerning(4.0)
                        .padding()
                    
                    Image(systemName: "swift")
                        .resizable()
                        .padding(.all)
                        .frame(width: 100.0, height: 100.0)
                        .opacity(swiftyOpacity)
                        .background(swiftyColor)
                    
 
            }
            Buttonlabel(title: "Next", systemImage: "square.and.arrow.down.fill")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        Thumbnail()
            .padding()
            .previewLayout(.fixed(width:250, height: 250))
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


struct Thumbnail: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.accentColor)
                    .aspectRatio(contentMode: .fit)
                    .shadow(radius: 15)
                
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    .opacity(0.5)
            }
            VStack(alignment: .leading) {
                Text("it works")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("This too, yay")
                    .font(.largeTitle)
                
                Spacer()
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}



struct Buttonlabel: View {
    let title: String
    let systemImage: String
    
    var body: some View {
        HStack {
            Button { print ("Next image!")}
                label: {
                    HStack {
                        Spacer()
                        Label(title, systemImage: systemImage)
                        Spacer()
                    }
                    .padding(.vertical)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(15)
            }
        }
    }
}
}
