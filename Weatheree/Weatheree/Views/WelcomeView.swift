//
//  WelcomeView.swift
//  Weatheree
//
//  Created by Arman Akash on 7/17/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            VStack(spacing: 20){
                Text("Welcome to Weatheree")
                    .bold()
                    .font(.title)
                
                Text("Please share your current location to get the curent weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            // LOCATION BUTTON
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            } //: LOCATION BUTTON
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
