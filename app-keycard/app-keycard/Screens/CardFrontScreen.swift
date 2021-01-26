//
//  ContentView.swift
//  app-keycard
//
//  Created by Rakesh Khandagale on 1/26/21.
//

import SwiftUI

struct CardFrontScreen: View {
    var body: some View {
        VStack {
            // Top Section
            VStack {
                Rectangle()
                    .fill(Color(red: 52.0/255.0, green: 52.0/255.0, blue: 52.0/255.0))
                    .frame(width: 100, height: 15, alignment: .center)
                    .cornerRadius(10.0)
                
                Image("profile")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(maxHeight: 250)
                    .clipShape(Circle())
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.red)
            .edgesIgnoringSafeArea(.all)
            
            Spacer()
            
            // Bottom Section
            VStack {
                HStack {
                    Text("RAKESH")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("KHANDAGALE")
                        .font(.largeTitle)
                        .fontWeight(.thin)
                }
                .padding(.top, 25.0)
                .padding(.bottom, 10.0)
                
                Text("iOS DEVELOPER")
                    .font(.subheadline)
                    .fontWeight(.light)
                
                Spacer()
                
                HStack {
                    Text("YOUR")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("COMPANY")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                }
                .padding()
            }
            .frame(maxWidth: .infinity)
            .frame(maxHeight: 350)
            .background(Color.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardFrontScreen()
    }
}
