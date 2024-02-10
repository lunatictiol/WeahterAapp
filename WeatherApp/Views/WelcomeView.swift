//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by sabiq on 08/02/24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @ObservedObject var locationManager :LocationManager
    @State private var isAnimating = false
    var body: some View {
        ZStack{
            BlobShape()
                .frame(width: 350,height: 425)
                .foregroundStyle(.linearGradient(colors: [.pink,.blue], startPoint: .topLeading, endPoint: .bottomTrailing )
                )
                .opacity(isAnimating ? 1: 0)
                .offset(y: isAnimating ? 0: -40)
                .animation(.easeOut(duration: 4), value: isAnimating)
            
            VStack{
                VStack(spacing:8){
                    Text("Welcome to the weather App")
                        .bold()
                        .foregroundStyle(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()
                    Text("Share your location to see the weather updates ")
                        .foregroundStyle(.white)
                        .padding()
                        
                }
                .multilineTextAlignment(.center )
                    .padding(8)
                LocationButton(.shareCurrentLocation) {
                    locationManager.requestLoaction()
                }
                .clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/))
                .symbolVariant(.fill)
                .foregroundStyle(.white)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }.onAppear{
            isAnimating = true
        }
    }
}

#Preview {
    WelcomeView(locationManager: LocationManager())
}
