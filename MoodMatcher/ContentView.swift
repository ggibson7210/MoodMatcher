//
//  ContentView.swift
//  MoodMatcher
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 176/255, green: 226/255, blue: 152/255)
                .ignoresSafeArea()
            VStack {
                
                Text("Welcome to")
                    .font(.title2)
                    .padding(0.5)
                    
                    .navigationTitle("In The Zone")
               
                    .font(.title3)
                Text("😎")
                    .font(.system(size: 60))
                    
                    .fontWeight(.bold)
                    .padding(50) // Adjust size of the circle
                            .background(Color.green) // background color of circle
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.black, lineWidth: 2) //border of circle
                        )
                    
                    .padding(15)
                    
                Text("Pick a category below for recommendations:")
                
                ZStack{
                    VStack{
                        NavigationLink(destination: SecondView()){
                            Text("Activities")
                                .font(.title3)
                                .padding()
                                .padding()
                                .background(Rectangle()
                                    .foregroundColor(Color(hue: 0.194, saturation: 0.664, brightness: 0.803)))
                                .cornerRadius(15)
                                .shadow(radius:15)
                                .padding()
                        }
                        
                        NavigationLink(destination: ThirdView()){
                            Text("Songs")
                                .font(.title3)
                                .padding()
                                .padding()
                                .background(Rectangle()
                                    .foregroundColor(Color(hue: 0.194, saturation: 0.664, brightness: 0.803)))
                                .cornerRadius(15)
                                .shadow(radius:15)
                                .padding()
                        }
                        
                        NavigationLink(destination: FourthView()){
                            Text("Quotes")
                                .font(.title3)
                                .padding()
                                .padding()
                                .background(Rectangle()
                                    .foregroundColor(Color(hue: 0.194, saturation: 0.664, brightness: 0.803)))
                                .cornerRadius(15)
                                .shadow(radius:15)
                                .padding()
                        }
                                     
                                     
                    }
                }
                    
            }
            .padding()
        }
        
        
    }
}

#Preview {
    ContentView()
}
