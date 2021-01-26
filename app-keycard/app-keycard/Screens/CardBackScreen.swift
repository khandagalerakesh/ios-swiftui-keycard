//
//  CardBackScreen.swift
//  app-keycard
//
//  Created by Rakesh Khandagale on 1/26/21.
//

import SwiftUI

struct CardBackScreen: View {
    var body: some View {
        VStack {
            // Top Section
            VStack {
                Rectangle()
                    .fill(Color(red: 52.0/255.0, green: 52.0/255.0, blue: 52.0/255.0))
                    .frame(width: 100, height: 15, alignment: .center)
                    .cornerRadius(10.0)
                
                Image("barCode")
                    .resizable()
                    .aspectRatio(2.5, contentMode: .fit)
                    .frame(maxHeight: 200)
                    .padding([.leading, .trailing])
            }
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("NID: ")
                        .font(.headline)
                        .fontWeight(.light)
                    Text("1234567890")
                        .font(.headline)
                        .fontWeight(.bold)
                }
                
                HStack {
                    Text("PHONE: ")
                        .font(.headline)
                        .fontWeight(.light)
                    Text("+123 1234 567 890\n +012 345 678")
                        .font(.headline)
                        .fontWeight(.bold)
                }
                
                HStack {
                    Text("MAIL: ")
                        .font(.headline)
                        .fontWeight(.light)
                    Text("mymail@yourcompany.com")
                        .font(.headline)
                        .fontWeight(.bold)
                }
                
                HStack {
                    Text("BLOOD GROUP: ")
                        .font(.headline)
                        .fontWeight(.light)
                    Text("O+ (O Positive)")
                        .font(.headline)
                        .fontWeight(.bold)
                }
            }
            .padding(.bottom, 20)
            
            VStack(alignment: .leading) {
                Text("* IF THIS CARD IS FOUND, PLEASE INFORM *")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                    .padding(.bottom, 10)
                
                Text("Road #8, House #10\n5th Ave, New York\nNY, USA")
                    .font(.body)
                    .fontWeight(.medium)
            }
            
            Spacer()
            
            Text("your.company.com")
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .frame(minWidth: 0 , maxWidth: .infinity)
                .padding()
        }
        .padding([.leading, .trailing], 16.0)
    }
}

struct CardBackScreen_Previews: PreviewProvider {
    static var previews: some View {
        CardBackScreen()
    }
}
