//
//  CardBackScreen.swift
//  app-keycard
//
//  Created by Rakesh Khandagale on 1/26/21.
//

import SwiftUI

struct CardBackScreen: View {
    
    // MARK:- Properties
    let employeeInformation = ["NID": "1234567890",
                               "PHONE": "+123 1234 567 890\n +012 345 678",
                               "MAIL": "mymail@yourcompany.com",
                               "BLOOD GROUP": "O+ (O Positive)"]
    
    var body: some View {
        VStack {
            // Top Section
            VStack {
                NotchView()
                    .padding()
                
                CustomImageView(imageName: "barCode",
                                aspectRatio: 2.5,
                                maxHeight: 200)
                    .padding([.leading, .trailing])
            }
            
            VStack(alignment: .leading, spacing: 10) {
                ForEach(employeeInformation.keys.sorted(), id: \.self) { key in
                    HStack {
                        CustomTextView(title: "\(key): ",
                                       size: 18,
                                       fontWeight: .light,
                                       textColor: .black)
                        
                        CustomTextView(title: employeeInformation[key]!,
                                       size: 18,
                                       fontWeight: .bold,
                                       textColor: .black)
                    }
                }
            }
            .padding(.bottom, 20)
            
            VStack(alignment: .leading, spacing: 20) {
                CustomTextView(title: "* IF THIS CARD IS FOUND, PLEASE INFORM *",
                               size: 16,
                               fontWeight: .bold,
                               textColor: .red)
                    
                CustomTextView(title: "Road #8, House #10\n5th Ave, New York\nNY, USA",
                               size: 18,
                               fontWeight: .medium,
                               textColor: .black)
            }
            
            Spacer()
            
            CustomTextView(title: "your.company.com",
                           size: 18,
                           fontWeight: .bold,
                           textColor: .black)
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}

struct CardBackScreen_Previews: PreviewProvider {
    static var previews: some View {
        CardBackScreen()
    }
}
