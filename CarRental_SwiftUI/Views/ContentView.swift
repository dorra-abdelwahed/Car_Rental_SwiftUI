//
//  ContentView.swift
//  CarRental_SwiftUI
//
//  Created by Dorra Ben Abdelwahed on 21/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack {
            
            HStack{
                
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .frame(width: 25, height: 20)
                    .foregroundColor(.white)
                    .padding(.trailing, 20)
                
                Text("Hi ! Marwa")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                
                Spacer()
                
                Button {
                    
                } label: {
                    
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        .padding(.trailing, 20)
                    
                }
                
                Image("avatar")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 1))
                    .frame(width: 38, height: 38)
                    

            }
            .padding()
            .padding(.top,40)
            .background(Color("Blue"))
            
            
            Spacer()
            
            ZStack{
                
                Image("Car")
                
                VStack(alignment: .center) {
                    
                    Text("Rental Cars \n Make It An Experience")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding(10)
                        
                    
                    Text("Find Your Match Today")
                        .foregroundColor(.white)
                        .font(.subheadline)
                }
                .padding()
                .background(Color("Gray").opacity(0.5))
                        .clipShape(

                            RoundedRectangle(
                                cornerRadius: 20,
                                style: .continuous
                            )
                        )
                
                
            }
            
            Spacer()
            
            ZStack{
                
                VStack(spacing: 20) {
                    
                    HStack(spacing: 20) {
                        
                        PickerComponent(title: "Location", subTitle: "Tunisa - Sousse", image: "chevron.down")
                        
                        PickerComponent(title: "Date & Time", subTitle: "29/01/2023 ", image: "calendar")
                    }
                    
                    
                    HStack{
                        
                       Text("Start you car experience here")
                            .foregroundColor(.white)
                            .font(.headline)
                            
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            
                            Text("Check Availability")
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .frame(width: 160, height: 40)
                                .background(Color.orange)
                                        .clipShape(

                                            RoundedRectangle(
                                                cornerRadius: 10,
                                                style: .continuous
                                            )
                                        )
                                     
                        }

                    }
                    
                }.padding()
                
            }
            .background(Color("Blue"))
                    .clipShape(

                        // 3
                        RoundedRectangle(
                            cornerRadius: 20,
                            style: .continuous
                        )
                    )
                    .padding()
            
            Spacer()
            
            HStack(spacing: 15){
                
                Button {
                    
                } label: {
                    
                    Text("Car")
                        .foregroundColor(.black)
                        .frame(width: 160, height: 50)
                        .border(.gray.opacity(0.5), width: 1)
                        .background(Color.white)
                        .clipShape(
                            
                            Rectangle()
                            
                        )
                        .cornerRadius(50)
                        .shadow(radius: 5)
                }
                    
                Button {
                    
                } label: {
                    
                    Text("Destination")
                        .foregroundColor(.black)
                        .frame(width: 160, height: 50)
                        .border(.gray.opacity(0.5), width: 1)
                        .background(Color.white)
                        .clipShape(
                            
                            Rectangle()
                            
                        )
                        .cornerRadius(50)
                        .shadow(radius: 5)
                }
            }
            .padding()
            
            Spacer()
            
            
        }
        .frame(maxWidth: .infinity, maxHeight:  .infinity)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
