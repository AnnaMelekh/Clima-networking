//
//  WeatherModel.swift
//  Clima
//
//  Created by Anna Melekhina on 12.10.2024.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let city: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }

    var conditionName: String {
        switch conditionId {
        case 200...299: "cloud.bolt";
        case 300...399: "cloud.drizzle";
        case 500...599: "cloud.rain";
        case 600...699: "cloud.snow";
        case 700...799: "cloud.fog";
        case 800: "sun.max";
        case ...801 : "cloud.bolt";
        default: "error"
    }
    
     
    }
}
