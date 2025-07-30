//
//  QuotesBrainFog.swift
//  MoodMatcher
//
//  Created by Scholar on 7/30/25.
//

import SwiftUI

struct QuotesBrainFog: View {
    @State private var quotes: [String] = [
        "“The cure for boredom is curiosity. There is no cure for curiosity.” - Dorothy Parker",
        "“Boredom opens up space for new engagements. Without boredom, no creativity.”  - Slavoj Žižek",
        "“Boredom is a symptom of a conditioned and closed mind. If you are bored, you’re doing yourself a tremendous disservice. Open your mind, break free from your conditioned routine, and reignite the flames of excitement and discovery.” - Steve Maraboli",
        "“Each morning we are born again. What we do today is what matters most” - Buddha",
        "“If it excites and scares you at the same time, it probably means you should do it” - Gurubogsa"
    ]
    
    @State private var newQuote: String = ""

    var body: some View {
        ZStack {
            Color(red: 0.9294117647058824, green: 0.7450980392156863, blue: 0.8941176470588236)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    HStack {
                        Text("📝")
                            .font(.system(size: 40))
                        Text("Quotes")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.744, saturation: 0.807, brightness: 0.397))
                            .padding()
                            .border(Color(hue: 0.812, saturation: 0.437, brightness: 0.68), width:3)
                            .background(Color(hue: 0.827, saturation: 0.254, brightness: 0.64))
                            .padding(15)
                        Text("📝")
                            .font(.system(size: 40))
                    }
                    
                    Text("to uplift your mood:")
                        .font(.title3)
                        .foregroundColor(Color(red: 0.222, green: 0.078, blue: 0.396))
                        .padding()
                        .background(
                            Capsule()
                                .fill(Color(hue: 0.797, saturation: 0.351, brightness: 0.789))
                        )
                        .overlay(
                            Capsule()
                                .stroke(Color(hue: 0.771, saturation: 0.503, brightness: 0.554), lineWidth: 2)
                        )
                        .shadow(radius: 2)

                    // MARK: - TextField and Button
                    HStack {
                        TextField("Type your quote here", text: $newQuote)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                        
                        Button(action: {
                            if !newQuote.trimmingCharacters(in: .whitespaces).isEmpty {
                                quotes.append(newQuote)
                                newQuote = ""
                            }
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .font(.title2)
                        }
                        .padding(.trailing)
                    }

                    // MARK: - Display Quotes
                    ForEach(quotes.indices, id: \.self) { index in
                        HStack {
                            Text("- \(quotes[index])")
                                .font(.system(size: 17))
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.156, green: 0.079, blue: 0.388))
                                .padding()
                                .border(Color(hue: 0.792, saturation: 0.487, brightness: 0.628), width: 3)
                                .background(Color(hue: 0.81, saturation: 0.126, brightness: 0.982))
                                .padding(.horizontal)
                            
                            // Delete Button
                            Button(action: {
                                quotes.remove(at: index)
                            }) {
                                Image(systemName: "trash")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
}


#Preview {
    QuotesBrainFog()
}

