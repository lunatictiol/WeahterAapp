//
//  WeatherManager.swift
//  WeatherApp
//
//  Created by sabiq on 10/02/24.
//

import Foundation
import CoreLocation

class WeatherManager{
    private var apiKey = "a7c052994774cc5ad84b03238a2f4ba7"
    
    func getWeatherDay(for coordinate:CLLocationCoordinate2D, completion: @escaping (Result<WeatherResponse,WeatherError>)->Void ){
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(coordinate.latitude)&lon=\(coordinate.longitude)&appid=\(apiKey)&units=metric") else {
            completion(.failure(WeatherError.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error==nil else{
                completion(.failure(WeatherError.invalidData))
                return
            }
            
            do {
                let weatherResponse = try JSONDecoder().decode(WeatherResponse.self, from: data )
                completion(.success(weatherResponse))
            }
            catch{
                completion(.failure(WeatherError.invalidData))
            }
        }.resume()
    }
    
}

enum WeatherError:Error{
    case invalidURL
    case invalidData
}
struct WeatherResponse: Decodable {
    
    var weather:[WeatherDetaitls]
    var main: MainResponse
    var name: String
    var wind : WindResponse
    var Sys :  Country
    
    // MARK: - Main
    struct MainResponse : Decodable{
        var temp :Double
        var feels_Like :Double
        var temp_Min :Double
        var temp_Max :Double
        var pressure :Double
        var humidity :Double
        
    }
    
    
    // MARK: - country
    struct Country: Decodable {
        var country: String
        var sunrise, sunset: Int
    }
    
    // MARK: - Weather
    struct WeatherDetaitls: Decodable {
        var id: Int
        var main, description, icon: String
    }
    
    // MARK: - Wind
    struct WindResponse: Decodable {
        var speed: Double
        
    }
    var conditionName: String{
        guard let firstWeather = weather.first else {return "cloud"}
        switch firstWeather.id{
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 700...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
                                                
        }
        
    }
    
}

extension WeatherResponse.MainResponse{
    var tempMin : Double{
        return temp_Min
    }
    var tempMax : Double{
        return temp_Max
    }
}

