//
//  ContentView.swift
//  MoodMatcher
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 244/255, green: 228/255, blue: 193/255)
                .ignoresSafeArea()
            
            VStack {
                Text("MOOD MATCHER")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 10.0)
                    .shadow(radius: 15)
                
                VStack {
                    HStack {
                        Text("Cloud 9 😇")
                            .multilineTextAlignment(.center)
                            .padding()
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 10.0)
                            .frame(width: 175.0, height: 175.0)
                            .background(Color(red: 0.883, green: 0.645, blue: 0.343))
                            .cornerRadius(10)
                            .shadow(radius: 15)
                            .clipShape(Circle())
                        
                        Text("In The Zone 😎")
                            .multilineTextAlignment(.center)
                            .padding()
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 10.0)
                            .frame(width: 175.0, height: 175.0)
                            .background(Color(red: 0.6392156862745098, green: 0.7607843137254902, blue: 0.5137254901960784))
                            .cornerRadius(10)
                            .shadow(radius: 15)
                            .clipShape(Circle())
                    }
                }
                
                VStack {
                    HStack {
                        Text("Brain Fog 😵‍💫")
                            .multilineTextAlignment(.center)
                            .padding()
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 10.0)
                            .frame(width: 175.0, height: 175.0)
                            .background(Color(red: 0.639, green: 0.4235294117647059, blue: 0.6392156862745098))
                            .cornerRadius(10)
                            .shadow(radius: 15)
                            .clipShape(Circle())
                        
                        Text("Melancholy ☹️")
                            .multilineTextAlignment(.center)
                            .padding()
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 10.0)
                            .frame(width: 175.0, height: 175.0)
                            .background(Color(red: 0.32941176470588235, green: 0.3607843137254902, blue: 0.5764705882352941))
                            .cornerRadius(10)
                            .shadow(radius: 15)
                            .clipShape(Circle())
                    }
                }
                .padding(10.0)
                .padding()
                
                VStack {
                    Text("Take Mood Quiz")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.horizontal, 10.0)
                        .frame(width: 220.0, height: 40.0)
                        .background(Color(hue: 0.91, saturation: 0.451, brightness: 0.568))
                        .cornerRadius(10)
                        .shadow(radius: 15)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
