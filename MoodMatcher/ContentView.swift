//
//  ContentView.swift
//  MoodMatcher
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI

struct ContentView: View {
   // NavigationView { ()
    var body: some View {
        ZStack{
            Color(red: 243/255, green: 208/255, blue: 195/255)
                .ignoresSafeArea()
            VStack {
                
                Text("Welcome to:")
                    .font(.title2)
                    .padding(0.5)
                
                    //.navigationTitle
                Text("In The Zone")
                
                    .font(.title)
                Text("😎")
                    .font(.system(size: 70))
                
                    .fontWeight(.bold)
                    .padding(30) // Adjust size of the circle
                    .background(Color.green) // background color of circle
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 2) //border of circle
                    )
                
                    .padding(15)
                
                Text("Pick a category below for recommendations:")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                
                ZStack{
                    VStack{
                        //   NavigationLink(destination: SecondView()){
                        Text("Activities")
                            .font(.title3)
                            .padding()
                            .padding()
                            .background(Rectangle()
                                .foregroundColor(Color(hue: 0.194, saturation: 0.664, brightness: 0.803)))
                            .cornerRadius(15)
                            .shadow(radius:15)
                            .padding()
                        
                        
                        //         NavigationLink(destination: ThirdView()){
                        Text("Songs")
                            .font(.title3)
                            .padding()
                            .padding()
                            .background(Rectangle()
                                .foregroundColor(Color(hue: 0.194, saturation: 0.664, brightness: 0.803)))
                            .cornerRadius(15)
                            .shadow(radius:15)
                            .padding()
                        
                        
                            .padding()
                        //      NavigationLink(destination: FourthView()){
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
            .padding()
        }
        
        
    }
}

#Preview {
    ContentView()
}
