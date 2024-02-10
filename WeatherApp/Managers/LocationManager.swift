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
    
    func locationmanager(_ manager:CLLocationManager,didUpdateLocation locations:[CLLocation]){
        location = locations.first?.coordinate
        isLoading = false
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Encountered error while getting location: \(error) ")
        isLoading = false 
    }
    
}
