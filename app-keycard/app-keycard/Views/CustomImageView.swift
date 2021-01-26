//
//  CustomImageView.swift
//  app-keycard
//
//  Created by Rakesh Khandagale on 1/26/21.
//

import SwiftUI

struct CustomImageView: View {
    
    // MARK:- Properties
    var imageName: String
    var aspectRatio: CGFloat
    var maxHeight: CGFloat
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(aspectRatio, contentMode: .fit)
            .frame(maxHeight: maxHeight)
    }
}
