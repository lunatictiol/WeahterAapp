//
//  LoadingView.swift
//  WeatherApp
//
//  Created by sabiq on 08/02/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack{
            Text("Please wait location is Loading 😚")
                .padding()
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                
        }
    }
}

#Preview {
    LoadingView()
}
