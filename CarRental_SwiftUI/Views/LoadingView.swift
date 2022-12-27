//
//  LoadingView.swift
//  CarRental_SwiftUI
//
//  Created by Dorra Ben Abdelwahed on 25/12/2022.
//

import SwiftUI

struct LoadingView: View {
    
    @State var currentProgress: CGFloat = 30.0
    
    var body: some View {
    
        VStack {
            
            Image("carBlue")
                .padding()
            
            ProgressView(value: currentProgress, total: 100)
                .frame(width: 200)
                .padding()
            
            Text("Loading Booking Summary")
                .font(.headline)
                .foregroundColor(Color("GrayLight"))
                .padding()
        }
        .padding()
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
