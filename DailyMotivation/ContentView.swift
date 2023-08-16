//
//  ContentView.swift
//  DailyMotivation
//
//  Created by Work on 16.08.23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Yo"
    
    var body: some View {
        
        VStack(spacing: 0) {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 1)
                .padding()
            
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                    
                }
                .buttonStyle(.borderedProminent)
                
                Button("Great") {
                    messageString = "You Are Great!"
                    
                }
                .buttonStyle(.borderedProminent)
            }
            .border(.purple, width: 5)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
