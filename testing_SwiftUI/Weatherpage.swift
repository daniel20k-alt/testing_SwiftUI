//
//  Weatherpage.swift
//  testing_SwiftUI
//
//  Created by DDDD on 11/12/2020.
//

import SwiftUI

struct Weatherpage: View {
    let weather = Weather()
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            CurrentConditions()
            
            Divider()
            
            HStack {
                ForEach(weather.hourlyForecast, id: \.hour) {
                    forecast in
                    Spacer()
                    HourlyForecast(forecast: forecast)
                    Spacer()
                }
            }
        }
        .padding()
        .background(Color(.blue))
        .foregroundColor(.white)

        
    }
}


struct Weather {
    struct Forecast {
        let hour: String
        let conditions: Image
        let temperature: String
    }
    
    let hourlyForecast = [
        Forecast(hour: "08:00", conditions: Image(systemName: "sun.max.fill"), temperature: "6"),
        Forecast(hour: "09:00", conditions: Image(systemName: "cloud.sun.fill"), temperature: "5"),
        Forecast(hour: "10:00", conditions: Image(systemName: "sun.max.fill"), temperature: "6"),
        Forecast(hour: "11:00", conditions: Image(systemName: "cloud.fill"), temperature: "5"),
        Forecast(hour: "12:00", conditions: Image(systemName: "cloud.rain.fill"), temperature: "4"),
    ]
}


struct Weatherpage_Previews: PreviewProvider {
    static var previews: some View {
        
        Weatherpage()
            .previewLayout(.sizeThatFits)
        
    }
}

struct CurrentConditions: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            VStack(alignment: .leading) {
                Text("Chisinau")
                    .font(.title3)
                
                Text("6 grade")
                    .font(.largeTitle)
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Image(systemName: "sun.max.fill")
                    .renderingMode(.original)
                
                Text("Sunny")
                Text("H:8, L:4")
            }
        }
    }
}

struct HourlyForecast: View {
    
    let forecast: Weather.Forecast
    
    var body: some View {
        VStack {
            Text(forecast.hour)
            
            forecast.conditions
                .renderingMode(.original)
                .frame(height: 50)
            
            Text(forecast.temperature)
        }
    }
}
