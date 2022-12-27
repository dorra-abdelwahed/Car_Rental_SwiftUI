//
//  PickerComponent.swift
//  CarRental_SwiftUI
//
//  Created by Dorra Ben Abdelwahed on 22/12/2022.
//

import SwiftUI

struct PickerComponent: View {
    
    var title: String
    var subTitle: String
    var image: String
    
    var body: some View {
        
        HStack {
            
            VStack(alignment: .leading){
                
                Text(title)
                    .font(.caption)
                
                Text(subTitle)
                    .font(.caption2)
            }
            
            Spacer()
            
            Image(systemName: image)
                .font(.headline)
        }
        .padding()
        .foregroundColor(.white)
        .background(Color("DarkBlue"))
        .clipShape(

            // 3
            RoundedRectangle(
                cornerRadius: 20,
                style: .continuous
            )
            )
        
    }
}

struct PickerComponent_Previews: PreviewProvider {
    static var previews: some View {
        
        PickerComponent(title: "Pick Up Location", subTitle: "Tunisa - Sousse", image: "chevron.down")
    }
}
