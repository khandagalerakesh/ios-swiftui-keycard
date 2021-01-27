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
                NotchView()
                    .padding()
                
                CustomImageView(imageName: "profile",
                                aspectRatio: 1,
                                maxHeight: 250)
                    .clipShape(Circle())
                    .padding()
            }
            .frame(maxWidth: .infinity)
            .background(Color.red)
            .edgesIgnoringSafeArea(.all)
            
            Spacer()
            
            // Bottom Section
            VStack {
                HStack {
                    CustomTextView(title: "RAKESH",
                                   size: 28,
                                   fontWeight: .bold,
                                   textColor: .black)
                    
                    CustomTextView(title: "KHANDAGALE",
                                   size: 32,
                                   fontWeight: .thin,
                                   textColor: .black)
                }
                
                CustomTextView(title: "iOS DEVELOPER",
                               size: 22,
                               fontWeight: .light,
                               textColor: .black)
                    .padding()
                
                Spacer()
                
                HStack {
                    CustomTextView(title: "YOUR",
                                   size: 24,
                                   fontWeight: .bold,
                                   textColor: .black)
                    
                    CustomTextView(title: "COMPANY",
                                   size: 24,
                                   fontWeight: .bold,
                                   textColor: .red)
                }
                .padding()
            }
            .frame(maxWidth: .infinity)
            .frame(maxHeight: 350)
            .background(Color.white)
        }
    }
}

struct CardFrontScreen_Previews: PreviewProvider {
    static var previews: some View {
        CardFrontScreen()
    }
}
