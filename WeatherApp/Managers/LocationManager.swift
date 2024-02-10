//
//  LocationManager.swift
//  WeatherApp
//
//  Created by sabiq on 08/02/24.
//

import Foundation
import CoreLocation

class LocationManager: NSObject,ObservableObject,CLLocationManagerDelegate {
    var manager = CLLocationManager()
    @Published var location :CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init(){
        super.init()
        manager.delegate = self
    }
    
    func requestLoaction(){
        isLoading = true
        manager.requestLocation()
    }
    
    func locationManager(_ manager:CLLocationManager,didUpdateLocations locations:[CLLocation]){
        if let  loca = locations.first?.coordinate{
            location = loca
            isLoading = false
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Encountered error while getting location: \(error) ")
        isLoading = false 
    }
    
}
