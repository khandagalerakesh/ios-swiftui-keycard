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
                                   fontType: .title,
                                   fontWeight: .bold,
                                   textColor: .black)
                    
                    CustomTextView(title: "KHANDAGALE",
                                   fontType: .largeTitle,
                                   fontWeight: .thin,
                                   textColor: .black)
                }
                .padding()
                
                CustomTextView(title: "iOS DEVELOPER",
                               fontType: .subheadline,
                               fontWeight: .light,
                               textColor: .black)
                
                Spacer()
                
                HStack {
                    CustomTextView(title: "YOUR",
                                   fontType: .title,
                                   fontWeight: .bold,
                                   textColor: .black)
                    
                    CustomTextView(title: "COMPANY",
                                   fontType: .title,
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
